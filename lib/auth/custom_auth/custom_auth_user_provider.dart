import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class UnmannedMYTAuthUser {
  UnmannedMYTAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<UnmannedMYTAuthUser> unmannedMYTAuthUserSubject =
    BehaviorSubject.seeded(UnmannedMYTAuthUser(loggedIn: false));
Stream<UnmannedMYTAuthUser> unmannedMYTAuthUserStream() =>
    unmannedMYTAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
