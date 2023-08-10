import 'dart:convert';

import 'package:atypon_app/dtos/add_role_to_user_request/addroletouserrequest.dart';
import 'package:atypon_app/dtos/remove_role_from_user_request/removerolefromuserrequest.dart';
import 'package:atypon_app/dtos/update_role_request/updaterolerequest.dart';
import 'package:atypon_app/models/role/role.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;
part 'roles.g.dart';

@riverpod
FutureOr<Role> getRole(GetRoleRef ref, int roleId) async {
  var response = await http.patch(
    Uri.parse('http://localhost:8080/roles/updateRole'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: roleId,
  );

  return Role.fromJson(jsonDecode(response.body));
}

@riverpod
FutureOr<List<Role>> roles(RolesRef ref) async {
  var roles = await http.get(
    Uri.parse('http://localhost:8080/roles/getRoles'),
  );
  var body = jsonDecode(roles.body);
  var roleJsonList = List.from(body);
  var rolesList = <Role>[];
  for (var role in roleJsonList) {
    rolesList.add(Role.fromJson(role));
  }
  return rolesList;
}

@riverpod
FutureOr<int> createRole(CreateRoleRef ref, String name) async {
  var response = await http.put(
    Uri.parse('http://localhost:8080/roles/createRole'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: name,
  );

  var responseDecoded = jsonDecode(response.body);
  return responseDecoded as int;
}

@riverpod
FutureOr<bool> updateRole(UpdateRoleRef ref, UpdateRoleRequest dto) async {
  var response = await http.patch(
    Uri.parse('http://localhost:8080/roles/updateRole'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode(dto.toJson()),
  );

  var responseDecoded = jsonDecode(response.body);
  return responseDecoded as bool;
}

@riverpod
FutureOr<bool> deleteRole(DeleteRoleRef ref, int roleId) async {
  var response = await http.patch(
    Uri.parse('http://localhost:8080/roles/updateRole'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: roleId,
  );

  var responseDecoded = jsonDecode(response.body);
  return responseDecoded as bool;
}

@riverpod
FutureOr<bool> addRoleToUser(
  AddRoleToUserRef ref,
  AddRoleToUserRequest dto,
) async {
  var response = await http.patch(
    Uri.parse('http://localhost:8080/roles/addRoleToUser'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode(dto),
  );

  var responseDecoded = jsonDecode(response.body);
  return responseDecoded as bool;
}

@riverpod
FutureOr<bool> removeRoleFromUser(
  RemoveRoleFromUserRef ref,
  RemoveRoleFromUserRequest dto,
) async {
  var response = await http.patch(
    Uri.parse('http://localhost:8080/roles/removeRoleFromUser'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode(dto),
  );

  var responseDecoded = jsonDecode(response.body);
  return responseDecoded as bool;
}
