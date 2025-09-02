import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql/client.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();

  const factory Failure({required String message}) = _Failure;
  const factory Failure.operation({OperationException? exception}) = _OperationFailure;
  const factory Failure.connection({String? message}) = _ConnectionFailure;
  const factory Failure.server({String? message}) = _ServerFailure;

  String get errorMessage => map(
        (value) => value.message,
        operation: (error) {
          final errors = error.exception?.graphqlErrors;
          if (errors != null && errors.isNotEmpty) {
            return errors.first.message;
          }
          return error.exception?.linkException?.toString() ?? 'Связь с сервером потеряна';
        },
        connection: (error) => error.message ?? 'Ошибка подключения',
        server: (error),
      );

  get error => null;

  static Failure parseOperationException(OperationException exception) {
    if (exception.graphqlErrors.isNotEmpty) {
      return Failure.operation(exception: exception);
    }
    if (exception.linkException != null) {
      return const Failure.server();
    }
    return const Failure.server();
  }
}
