import 'package:atypon_app/helpers.dart';
import 'package:atypon_app/screens/manage_classes/update_class_name_dialog.dart';
import 'package:atypon_app/state/classes/classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'update_class_users_screen.dart';

class UpdateClassesScreen extends ConsumerWidget {
  final int userId;
  const UpdateClassesScreen(this.userId, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final classes = ref.watch(classesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Class'),
      ),
      body: classes.when(
        data: (classes) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final clazz = classes[index];

              return ListTile(
                leading: CircleAvatar(child: Text(clazz.id.toString())),
                title: Text(clazz.name),
                onTap: () => goToScreen(
                  context,
                  UpdateClassUsersScreen(clazz.id),
                ),
                trailing: PopupMenuButton(
                  onSelected: (item) {
                    if (item == 2) {
                      goToScreen(context, UpdateClassUsersScreen(clazz.id));
                      return;
                    }
                    showDialog(
                      context: context,
                      builder: (context) {
                        return switch (item) {
                          1 => UpdateClassNameDialog(clazz: clazz),
                          _ => const SizedBox(),
                        };
                      },
                    );
                  },
                  itemBuilder: (context) {
                    return const [
                      PopupMenuItem(
                        value: 1,
                        child: Text('Update Name'),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text('Update Users'),
                      ),
                    ];
                  },
                ),
              );
            },
            itemCount: classes.length,
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
