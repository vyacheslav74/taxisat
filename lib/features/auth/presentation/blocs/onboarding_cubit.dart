import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

@singleton
class OnboardingCubit extends HydratedCubit<int> {
  OnboardingCubit() : super(0);

  void nextPage() => emit(state + 1);

  void previousPage() => emit(state - 1);

  void reset() => emit(0);

  void skip() => emit(3);

  @override
  int? fromJson(Map<String, dynamic> json) {
    return json['onboarding'] as int;
  }

  @override
  Map<String, dynamic>? toJson(int state) {
    return {'onboarding': state};
  }
}

extension OnboardingCubitX on OnboardingCubit {
  bool get isDone => state == 3;
}
