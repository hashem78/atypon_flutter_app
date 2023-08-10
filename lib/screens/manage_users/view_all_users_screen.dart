import 'package:atypon_app/helpers.dart';
import 'package:atypon_app/state/users/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ViewAllUsersScreen extends ConsumerWidget {
  const ViewAllUsersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(usersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('View All Users'),
      ),
      body: users.when(
        data: (users) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final user = users[index];
              final roles = joinRoles(user.roles);
              return ListTile(
                leading: CircleAvatar(child: Text(user.id.toString())),
                title: Text(user.email),
                subtitle: switch (roles) {
                  null => null,
                  _ => Text(roles),
                },
              );
            },
            itemCount: users.length,
          );
        },
        error: (_, __) {
          return const Text('Error');
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
