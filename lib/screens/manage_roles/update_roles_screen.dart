import 'package:atypon_app/dtos/update_role_request/updaterolerequest.dart';
import 'package:atypon_app/models/role/role.dart';
import 'package:atypon_app/state/role/roles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpdateRolesScreen extends ConsumerWidget {
  const UpdateRolesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final roles = ref.watch(rolesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Role'),
      ),
      body: roles.when(
        data: (roles) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final role = roles[index];
              return ListTile(
                leading: CircleAvatar(child: Text(role.id.toString())),
                title: Text(role.name),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return UpdateRoleDialog(role: role);
                    },
                  );
                },
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

class UpdateRoleDialog extends ConsumerStatefulWidget {
  const UpdateRoleDialog({
    super.key,
    required this.role,
  });

  final Role role;

  @override
  ConsumerState<UpdateRoleDialog> createState() => _UpdateRoleDialogState();
}

class _UpdateRoleDialogState extends ConsumerState<UpdateRoleDialog> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Update ${widget.role.name}\'s name'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: controller,
            autofocus: true,
            onSubmitted: (val) {
              doStuff();
            },
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: doStuff,
          child: const Text('Update'),
        )
      ],
    );
  }

  void doStuff() async {
    final response = await ref.read(
      updateRoleProvider(
        UpdateRoleRequest(
          widget.role.id,
          controller.text,
        ),
      ).future,
    );
    if (!mounted) return;
    if (!response) {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        const SnackBar(content: Text('Failed to update role!')),
      );
    } else {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        SnackBar(
          content: Text(
            'Update role! to ${controller.text}',
          ),
        ),
      );

      if (!mounted) return;
      Navigator.pop(context);
      ref.invalidate(rolesProvider);
    }
  }
}
