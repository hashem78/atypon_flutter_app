import 'package:atypon_app/helpers.dart';
import 'package:atypon_app/screens/manage_users/update_user_email_dialog.dart';
import 'package:atypon_app/screens/manage_users/update_user_password_dialog.dart';
import 'package:atypon_app/screens/manage_users/update_user_roles_screen.dart';
import 'package:atypon_app/state/users/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpdateUsersScreen extends ConsumerWidget {
  const UpdateUsersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(usersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update User'),
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
                trailing: PopupMenuButton(
                  onSelected: (item) {
                    if (item == 3) {
                      goToScreen(context, UpdateUserRolesScreen(user));
                      return;
                    }
                    showDialog(
                      context: context,
                      builder: (context) {
                        return switch (item) {
                          1 => UpdateUserEmailDialog(user: user),
                          2 => UpdateUserPasswordDialog(user: user),
                          _ => const SizedBox(),
                        };
                      },
                    );
                  },
                  itemBuilder: (context) {
                    return const [
                      PopupMenuItem(
                        value: 1,
                        child: Text('Update Email'),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text('Update password'),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: Text('Update roles'),
                      ),
                    ];
                  },
                ),
              );
            },
            itemCount: users.length,
          );
        },
        error: (_, __) => const Text('Error'),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
