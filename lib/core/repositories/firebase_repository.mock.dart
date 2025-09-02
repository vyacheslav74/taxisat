import 'package:injectable/injectable.dart';
import 'package:rider_flutter/core/repositories/firebase_repository.dart';

@dev
@LazySingleton(as: FirebaseRepository)
class FirebaseRepositoryMock implements FirebaseRepository {
  @override
  Future<void> retrieveAndUpdateFcmToken() async {}
}
