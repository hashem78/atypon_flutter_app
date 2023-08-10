import 'package:atypon_app/helpers.dart';
import 'package:atypon_app/screens/manage_roles/create_roles_screen.dart';
import 'package:atypon_app/screens/manage_roles/update_roles_screen.dart';
import 'package:atypon_app/screens/manage_roles/view_all_roles_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'delete_roles_screen.dart';

class ManageRolesScreen extends ConsumerWidget {
  const ManageRolesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Roles'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('View All Roles'),
            onTap: () => goToScreen(context, const ViewAllRolesScreen()),
          ),
          ListTile(
            title: const Text('Create Roles'),
            onTap: () => goToScreen(context, const CreateRolesScreen()),
          ),
          ListTile(
            title: const Text('Update Roles'),
            onTap: () => goToScreen(context, const UpdateRolesScreen()),
          ),
          ListTile(
            title: const Text('Delete Roles'),
            onTap: () => goToScreen(context, const DeleteRolesScreen()),
          ),
        ],
      ),
    );
  }
}
