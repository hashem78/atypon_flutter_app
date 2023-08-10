import 'package:atypon_app/models/role/role.dart';
import 'package:flutter/material.dart';

void goToScreen(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => screen,
    ),
  );
}

String? joinRoles(Set<Role>? roles) {
  if (roles == null || roles.isEmpty) return null;
  var str = "";
  for (var role in roles) {
    str += '${role.name}, ';
  }
  return str.replaceRange(str.length - 2, str.length, '');
}
