# Ridy Rider App

The Ridy Rider App is a Flutter application that serves as the customer-facing frontend for the Ridy transportation platform. This app enables users to book rides, track their journey, manage payments, and communicate with drivers.

## Table of Contents

- [Installation](#installation)
- [Features](#features)
- [Project Structure](#project-structure)

## Installation

### Prerequisites

- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / Xcode
- Firebase account and setup
- GraphQL understanding

### Setup

1 Clone the repository

```bash
git clone <repository-url>
cd apps/rider-frontend
```

2 Install dependencies

```bash
flutter pub get
```

3 Run the app

```bash
flutter run
```

## Features

- User authentication and profile management
- Ride booking with location selection
- Real-time ride tracking
- In-app chat with drivers
- Multiple payment methods
- Ride history and receipts
- Promotional offers and discounts
- Multiple language support

## Project Structure

The project follows a feature-first architecture with the following structure:

```
lib/
├── config/                # Application configuration
│   ├── env.dart           # Environment variables
│   └── themes.dart        # UI themes and styling
├── data/
│   ├── models/            # Data models
│   ├── repositories/      # Data repositories
│   └── graphql/           # GraphQL queries and mutations
├── features/
│   ├── authentication/    # Authentication screens and logic
│   ├── booking/           # Ride booking flow
│   ├── home/              # Home screen and related components
│   ├── payments/          # Payment processing
│   ├── profile/           # User profile management
│   └── tracking/          # Ride tracking functionality
├── shared/
│   ├── components/        # Reusable UI components
│   ├── helpers/           # Helper functions and utilities
│   ├── services/          # Global services
│   └── constants/         # App constants
├── generated/             # Generated code (GraphQL, i18n)
├── i18n/                  # Internationalization resources
├── main.dart              # Application entry point
└── app.dart               # Root app configuration
```

Key architectural components:

- BLoC pattern for state management
- Repository pattern for data access
- Service locator for dependency injection
- Feature-first organization for better code maintainability

## Generating splash screen

First update the images at assets/splash.png and assets/splash_dark.png.
Then the Splash screen can be generated using the following command:

```bash
dart run flutter_native_splash:create
```
