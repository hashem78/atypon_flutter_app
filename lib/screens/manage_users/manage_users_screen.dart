import 'package:atypon_app/helpers.dart';
import 'package:atypon_app/screens/manage_users/create_users_screen.dart';
import 'package:atypon_app/screens/manage_users/update_users_screen.dart';
import 'package:atypon_app/screens/manage_users/view_all_users_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'delete_users_screen.dart';

class ManageUsersScreen extends ConsumerWidget {
  const ManageUsersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Users'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('View All Users'),
            onTap: () => goToScreen(context, const ViewAllUsersScreen()),
          ),
          ListTile(
            title: const Text('Create User'),
            onTap: () => goToScreen(context, const CreateUsersScreen()),
          ),
          ListTile(
            title: const Text('Update Users'),
            onTap: () => goToScreen(context, const UpdateUsersScreen()),
          ),
          ListTile(
            title: const Text('Delete Users'),
            onTap: () => goToScreen(context, const DeleteUsersScreen()),
          ),
        ],
      ),
    );
  }
}
