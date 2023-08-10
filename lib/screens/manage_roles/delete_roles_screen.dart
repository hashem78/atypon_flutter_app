import 'package:atypon_app/state/role/roles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeleteRolesScreen extends ConsumerStatefulWidget {
  const DeleteRolesScreen({super.key});

  @override
  ConsumerState<DeleteRolesScreen> createState() => _DeleteRolesScreenState();
}

class _DeleteRolesScreenState extends ConsumerState<DeleteRolesScreen> {
  @override
  Widget build(BuildContext context) {
    final roles = ref.watch(rolesProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Delete Roles')),
      body: roles.when(
        data: (roles) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final role = roles[index];
              return ListTile(
                leading: CircleAvatar(child: Text(role.id.toString())),
                title: Text(role.name),
                trailing: IconButton(
                  onPressed: () async {
                    final response =
                        await ref.read(deleteRoleProvider(role.id).future);

                    if (!mounted) return;

                    if (!response) {
                      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                        const SnackBar(content: Text('Failed to delete role')),
                      );
                    } else {
                      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                        SnackBar(
                          content: Text(
                            'Delted Role ${role.name}',
                          ),
                        ),
                      );
                    }
                  },
                  icon: const Icon(Icons.close),
                ),
              );
            },
            itemCount: roles.length,
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
