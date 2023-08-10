import 'package:atypon_app/helpers.dart';
import 'package:atypon_app/state/users/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeleteUsersScreen extends ConsumerStatefulWidget {
  const DeleteUsersScreen({super.key});

  @override
  ConsumerState<DeleteUsersScreen> createState() => _DeleteUsersScreenState();
}

class _DeleteUsersScreenState extends ConsumerState<DeleteUsersScreen> {
  @override
  Widget build(BuildContext context) {
    final users = ref.watch(usersProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Delete Users')),
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
                trailing: IconButton(
                  onPressed: () async {
                    final response =
                        await ref.read(deleteUserProvider(user.id).future);

                    if (!mounted) return;

                    if (!response) {
                      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                        const SnackBar(content: Text('Failed to delete user')),
                      );
                    } else {
                      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                        SnackBar(
                          content: Text(
                            'Delted user ${user.email}',
                          ),
                        ),
                      );
                    }
                    ref.invalidate(usersProvider);
                  },
                  icon: const Icon(Icons.close),
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
