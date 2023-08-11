import 'package:atypon_app/helpers.dart';
import 'package:atypon_app/screens/manage_classes/update_class_screen.dart';
import 'package:atypon_app/screens/manage_classes/view_all_classes_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'create_classes_screen.dart';
import 'delete_classes_screen.dart';

class ManageClassesScreen extends ConsumerWidget {
  final int id;
  const ManageClassesScreen(this.id, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Classs'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('View All Classs'),
            onTap: () => goToScreen(context, const ViewAllClassesScreen()),
          ),
          ListTile(
            title: const Text('Create Class'),
            onTap: () => goToScreen(context, CreateClassesScreen(id)),
          ),
          ListTile(
            title: const Text('Update Classs'),
            onTap: () => goToScreen(context, UpdateClassesScreen(id)),
          ),
          ListTile(
            title: const Text('Delete Classs'),
            onTap: () => goToScreen(context, const DeleteClassessScreen()),
          ),
        ],
      ),
    );
  }
}
