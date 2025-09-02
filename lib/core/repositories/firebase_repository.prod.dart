import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/config/env.dart';
import 'package:rider_flutter/config/graphql/documents/home.graphql.dart';
import 'package:rider_flutter/core/datasources/graphql_datasource.dart';
import 'package:rider_flutter/core/repositories/firebase_repository.dart';

@prod
@LazySingleton(as: FirebaseRepository)
class FirebaseRepositoryImpl implements FirebaseRepository {
  final GraphqlDatasource _graphqlDatasource;

  FirebaseRepositoryImpl(this._graphqlDatasource);

  @override
  Future<void> retrieveAndUpdateFcmToken() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: false,
      provisional: true,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      try {
        final token = await messaging.getToken(
          vapidKey: Env.firebaseMessagingVapidKey,
        );
        if (token != null) {
          await _graphqlDatasource.mutate(
            Options$Mutation$UpdateFcmToken(
              variables: Variables$Mutation$UpdateFcmToken(token: token),
            ),
          );
        }
      } catch (e) {
        if (kDebugMode) {
          print(e);
        }
      }
    }
  }
}
