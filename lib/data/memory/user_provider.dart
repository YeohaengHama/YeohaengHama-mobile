import 'package:flutter_riverpod/flutter_riverpod.dart';

final loggedInUserIdProvider = StateProvider<String?>((ref) => null);

class User {
  final String userId;


  User(this.userId);
}
