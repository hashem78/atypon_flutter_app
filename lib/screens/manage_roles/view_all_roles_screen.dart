import 'package:atypon_app/state/role/roles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ViewAllRolesScreen extends ConsumerWidget {
  const ViewAllRolesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final roles = ref.watch(rolesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('View All Roles'),
      ),
      body: roles.when(
        data: (roles) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final role = roles[index];
              return ListTile(
                leading: CircleAvatar(child: Text(role.id.toString())),
                title: Text(role.name),
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
