import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/features/ride_history/domain/repositories/ride_history_repository.dart';

part 'report_issue.state.dart';
part 'report_issue.freezed.dart';

@lazySingleton
class ReportIssueCubit extends Cubit<ReportIssueState> {
  final RideHistoryRepository repository;

  ReportIssueCubit(this.repository) : super(const ReportIssueState.initial());

  void reportIssue({
    required String orderId,
    required String subject,
    required String issue,
  }) async {
    emit(const ReportIssueState.loading());
    final result = await repository.reportIssue(
      orderId: orderId,
      subject: subject,
      issue: issue,
    );
    result.fold(
      (failure) => emit(ReportIssueState.error(failure.errorMessage)),
      (success) => emit(const ReportIssueState.success()),
    );
  }
}
