import 'dart:convert';

import 'package:atypon_app/dtos/create_grade_request/creategraderequest.dart';
import 'package:atypon_app/dtos/delete_grade_request/deletegraderequest.dart';
import 'package:atypon_app/dtos/update_grade_request/upategraderequest.dart';
import 'package:atypon_app/models/grade/grade.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'grades.g.dart';

@riverpod
FutureOr<List<Grade>> gradesForUserInClass(
  GradesForUserInClassRef ref,
  int classId,
  int userId,
) async {
  var response = await http.get(
    Uri.parse(
      'http://localhost:8080/grades/getGradesForClass/$classId/$userId',
    ),
  );

  print(response.body);
  var decodedList = List.from(jsonDecode(response.body));
  var grades = <Grade>[];
  for (var decodedGrade in decodedList) {
    grades.add(Grade.fromJson(decodedGrade));
  }
  return grades;
}

@riverpod
FutureOr<bool> deleteGrade(DeleteGradeRef ref, DeleteGradeRequest dto) async {
  var response = await http.delete(
    Uri.parse('http://localhost:8080/grades/deleteGradeForUserInClass'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode(dto),
  );

  var responseDecoded = jsonDecode(response.body);
  return responseDecoded as bool;
}

@riverpod
FutureOr<bool> updateGrade(UpdateGradeRef ref, UpateGradeRequest dto) async {
  var response = await http.patch(
    Uri.parse('http://localhost:8080/grades/updateGradeForUserInClass'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode(dto),
  );

  print("=-=====");
  print(response.body);

  var responseDecoded = jsonDecode(response.body);
  return responseDecoded as bool;
}

@riverpod
FutureOr<bool> createGrade(CreateGradeRef ref, CreateGradeRequest dto) async {
  var response = await http.post(
    Uri.parse('http://localhost:8080/grades/createGradeForUserInClass'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode(dto),
  );

  print("=-=====");
  print(response.body);

  var responseDecoded = jsonDecode(response.body);
  return responseDecoded as bool;
}
