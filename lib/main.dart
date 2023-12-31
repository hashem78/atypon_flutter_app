import 'dart:convert';

import 'package:atypon_app/dtos/login_request/loginrequest.dart';
import 'package:atypon_app/helpers.dart';
import 'package:atypon_app/models/user/user.dart';
import 'package:atypon_app/screens/manage_classes/manage_classes_screen.dart';
import 'package:atypon_app/screens/manage_grades/manage_grades_screen.dart';
import 'package:atypon_app/screens/manage_users/manage_users_screen.dart';
import 'package:atypon_app/state/auth/auth.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import 'models/role/role.dart';
import 'screens/manage_roles/manage_roles_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FlutterLogin(
      onLogin: (data) async {
        var response = await http.post(
          Uri.parse('http://localhost:8080/auth'),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode(
            LoginRequest(
              data.name,
              sha256.convert(utf8.encode(data.password)).toString(),
            ).toJson(),
          ),
        );

        var resp = User.fromJson(jsonDecode(response.body));
        ref.read(authProvider.notifier).update((state) => state = resp);
        return null;
      },
      onSubmitAnimationCompleted: () {
        final user = ref.read(authProvider);
        var role = user.roles?.first ?? Role(0, 'student');

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return switch (role.name) {
                'admin' => AdminOptionScreen(user.id),
                'teacher' => const TeacherOptionScreen(),
                'student' => const StudentOptionScreen(),
                _ => const Scaffold(
                    body: Center(
                      child: Text('Uknown User type'),
                    ),
                  ),
              };
            },
          ),
        );
      },
      onRecoverPassword: (_) {
        return null;
      },
    );
  }
}

class AdminOptionScreen extends ConsumerWidget {
  final int id;
  const AdminOptionScreen(this.id, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: const Text('Admin Options'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Manage Roles'),
            onTap: () => goToScreen(context, const ManageRolesScreen()),
          ),
          ListTile(
            title: const Text('Manage Users'),
            onTap: () => goToScreen(context, const ManageUsersScreen()),
          ),
          ListTile(
            title: const Text('Manage Classes'),
            onTap: () => goToScreen(context, ManageClassesScreen(id)),
          ),
          ListTile(
            title: const Text('Manage Grades'),
            onTap: () => goToScreen(context, const ManageGradesScreen()),
          ),
        ],
      ),
    );
  }
}

class TeacherOptionScreen extends ConsumerWidget {
  const TeacherOptionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold();
  }
}

class StudentOptionScreen extends ConsumerWidget {
  const StudentOptionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold();
  }
}
