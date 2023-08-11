import 'dart:convert';

import 'package:atypon_app/dtos/add_user_to_class_request/addusertoclassrequest.dart';
import 'package:atypon_app/dtos/create_class_request/createclassrequest.dart';
import 'package:atypon_app/dtos/remove_user_from_class_request/removeuserfromclassrequest.dart';
import 'package:atypon_app/dtos/update_classs_name_request/updateclassnamerequest.dart';
import 'package:atypon_app/models/class/class.dart';
import 'package:atypon_app/models/user/user.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'classes.g.dart';

@riverpod
FutureOr<List<User>> getUsersForClass(
    GetUsersForClassRef ref, int classId) async {
  var response = await http.get(
    Uri.parse('http://localhost:8080/classes/getUsersForClass/$classId'),
  );

  var decodedList = List.from(jsonDecode(response.body));
  var userSet = <User>[];
  for (var decodedUser in decodedList) {
    userSet.add(User.fromJson(decodedUser));
  }
  return userSet;
}

@riverpod
FutureOr<List<Class>> classes(ClassesRef ref) async {
  var classes = await http.get(
    Uri.parse('http://localhost:8080/classes/getClasses'),
  );
  var body = jsonDecode(classes.body);

  var userJsonList = List.from(body);
  var classesList = <Class>[];
  for (var user in userJsonList) {
    classesList.add(Class.fromJson((user)));
  }
  return classesList;
}

@riverpod
FutureOr<List<Class>> classesForUser(ClassesForUserRef ref, int id) async {
  var classes = await http.get(
    Uri.parse('http://localhost:8080/classes/getClassesForUser/$id'),
  );
  var body = jsonDecode(classes.body);

  var userJsonList = List.from(body);
  var classesList = <Class>[];
  for (var user in userJsonList) {
    classesList.add(Class.fromJson((user)));
  }
  return classesList;
}

@riverpod
FutureOr<int> createClass(
  CreateClassRef ref,
  CreateClassRequest dto,
) async {
  var response = await http.put(
    Uri.parse('http://localhost:8080/classes/createClass'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode(dto),
  );

  return jsonDecode(response.body) as int;
}

@riverpod
FutureOr<bool> updateClass(
    UpdateClassRef ref, UpdateClassNameRequest dto) async {
  var response = await http.patch(
    Uri.parse('http://localhost:8080/classes/updateClass'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode(dto),
  );
  var responseDecoded = jsonDecode(response.body);
  return responseDecoded as bool;
}

@riverpod
FutureOr<bool> deleteClass(DeleteClassRef ref, int classId) async {
  var response = await http.delete(
    Uri.parse('http://localhost:8080/classes/deleteClass'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode(classId),
  );

  var responseDecoded = jsonDecode(response.body);
  return responseDecoded as bool;
}

@riverpod
FutureOr<bool> addUserToClass(
  AddUserToClassRef ref,
  AddUserToClassRequest dto,
) async {
  var response = await http.post(
    Uri.parse('http://localhost:8080/classes/addUserToClass'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode(dto),
  );

  var responseDecoded = jsonDecode(response.body);
  return responseDecoded as bool;
}

@riverpod
FutureOr<bool> removeUserFromClass(
  RemoveUserFromClassRef ref,
  RemoveUserFromClassRequest dto,
) async {
  var response = await http.delete(
    Uri.parse('http://localhost:8080/classes/removeUserFromClass'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode(dto),
  );

  var responseDecoded = jsonDecode(response.body);
  return responseDecoded as bool;
}
