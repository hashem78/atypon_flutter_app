import 'dart:convert';

import 'package:atypon_app/state/users/users.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateUsersScreen extends ConsumerStatefulWidget {
  const CreateUsersScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateUsersScreenState();
}

class _CreateUsersScreenState extends ConsumerState<CreateUsersScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Users'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              autofocus: true,
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              autofocus: true,
              controller: passwordController,
              onSubmitted: (val) => doStuff(context),
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => doStuff(context),
            child: const Text('Create User'),
          )
        ],
      ),
    );
  }

  void doStuff(BuildContext context) async {
    var email = emailController.text;
    var password =
        sha256.convert(utf8.encode(passwordController.text)).toString();
    var response = await ref.read(createUserProvider(email, password).future);
    if (!mounted) return;
    if (response == -1) {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        const SnackBar(content: Text('User already exists!')),
      );
    } else {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        SnackBar(
          content: Text(
            'Created user $email with id $response',
          ),
        ),
      );
    }
  }
}
