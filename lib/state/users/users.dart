import 'dart:convert';

import 'package:atypon_app/dtos/create_user_request/createuserrequest.dart';
import 'package:atypon_app/dtos/update_user_request/updateuserrequest.dart';
import 'package:atypon_app/models/user/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'users.g.dart';

@riverpod
FutureOr<User> getUser(GetUserRef ref, int userId) async {
  var response = await http.patch(
    Uri.parse('http://localhost:8080/users/updateUser'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: userId,
  );

  return User.fromJson(jsonDecode(response.body));
}

@riverpod
FutureOr<List<User>> users(UsersRef ref) async {
  var users = await http.get(
    Uri.parse('http://localhost:8080/users/getUsers'),
  );
  var body = jsonDecode(users.body);

  var userJsonList = List.from(body);
  var usersList = <User>[];
  for (var user in userJsonList) {
    usersList.add(User.fromJson((user)));
  }
  return usersList;
}

@riverpod
FutureOr<int> createUser(
    CreateUserRef ref, String email, String passwordHash) async {
  var response = await http.put(
    Uri.parse('http://localhost:8080/users/createUser'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode(CreateUserRequest(email, passwordHash)),
  );

  return jsonDecode(response.body) as int;
}

@riverpod
FutureOr<bool> updateUser(UpdateUserRef ref, UpdateUserRequest dto) async {
  var response = await http.patch(
    Uri.parse('http://localhost:8080/users/updateUser'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode(dto.toJson()),
  );

  var responseDecoded = jsonDecode(response.body);
  return responseDecoded as bool;
}

@riverpod
FutureOr<bool> deleteUser(DeleteUserRef ref, int userId) async {
  var response = await http.delete(
    Uri.parse('http://localhost:8080/users/deleteUser'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode(userId),
  );

  var responseDecoded = jsonDecode(response.body);
  return responseDecoded as bool;
}
