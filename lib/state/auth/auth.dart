import 'package:atypon_app/models/user/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = StateProvider(
  (ref) => User(id: 0, email: 'email'),
);
