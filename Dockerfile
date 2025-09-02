# Main app build stage
FROM ghcr.io/cirruslabs/flutter:3.29.1 AS app-build

WORKDIR /app

# Copy only necessary configuration files first to leverage caching
COPY apps/rider-frontend/pubspec.* ./apps/rider-frontend/
COPY libs/flutter_common/pubspec.* ./libs/flutter_common/

# Get dependencies for the rider-frontend app (this will be cached if dependencies don't change)
WORKDIR /app/apps/rider-frontend
RUN flutter pub get

# Copy app source code
WORKDIR /app
COPY apps/rider-frontend ./apps/rider-frontend/
COPY libs/flutter_common ./libs/flutter_common/

# Generate code with build_runner
WORKDIR /app/apps/rider-frontend
RUN dart run build_runner build --delete-conflicting-outputs

# Build web app
RUN flutter build web --release --no-tree-shake-icons

# Production stage
FROM ghcr.io/lumeagency/flutter-web-server:latest
COPY --from=app-build /app/apps/rider-frontend/build/web /app