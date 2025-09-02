part of 'report_issue.dart';

@freezed
class ReportIssueState with _$ReportIssueState {
  const factory ReportIssueState.initial() = ReportIssueInitial;
  const factory ReportIssueState.loading() = ReportIssueLoading;
  const factory ReportIssueState.success() = ReportIssueSuccess;
  const factory ReportIssueState.error(String errorMessage) = ReportIssueError;
}
