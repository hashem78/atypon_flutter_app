import 'package:atypon_app/dtos/create_grade_request/creategraderequest.dart';
import 'package:atypon_app/dtos/delete_grade_request/deletegraderequest.dart';
import 'package:atypon_app/dtos/update_grade_request/upategraderequest.dart';
import 'package:atypon_app/helpers.dart';
import 'package:atypon_app/state/classes/classes.dart';
import 'package:atypon_app/state/grades/grades.dart';
import 'package:atypon_app/state/users/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ManageGradesScreen extends ConsumerWidget {
  const ManageGradesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final classes = ref.watch(classesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Grades for a class'),
      ),
      body: classes.when(
        data: (classes) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final clazz = classes[index];

              return ListTile(
                leading: CircleAvatar(child: Text(clazz.id.toString())),
                title: Text(clazz.name),
                onTap: () =>
                    goToScreen(context, ManageGradesForAClassScreen(clazz.id)),
              );
            },
            itemCount: classes.length,
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

class ManageGradesForAClassScreen extends ConsumerWidget {
  final int classId;
  const ManageGradesForAClassScreen(this.classId, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersForClass = ref.watch(getUsersForClassProvider(classId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick a user'),
      ),
      body: usersForClass.when(
        data: (users) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final user = users[index];
              return ListTile(
                leading: CircleAvatar(child: Text(user.id.toString())),
                title: Text(user.email),
                onTap: () => goToScreen(
                  context,
                  ManageGradesForUsersScreen(classId, user.id),
                ),
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

class ManageGradesForUsersScreen extends ConsumerStatefulWidget {
  final int classId;
  final int userId;
  const ManageGradesForUsersScreen(
    this.classId,
    this.userId, {
    super.key,
  });

  @override
  ConsumerState<ManageGradesForUsersScreen> createState() =>
      _ManageGradesForUsersScreenState();
}

class _ManageGradesForUsersScreenState
    extends ConsumerState<ManageGradesForUsersScreen> {
  @override
  Widget build(BuildContext context) {
    final grades =
        ref.watch(gradesForUserInClassProvider(widget.classId, widget.userId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage grades'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => CreateGradeDialog(
              widget.classId,
              widget.userId,
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: grades.when(
        data: (grades) {
          return ListView.builder(
            itemBuilder: (context, index) {
              var grade = grades[index];
              return ListTile(
                leading: CircleAvatar(child: Text(grade.id.toString())),
                title: Text(grade.grade.toString()),
                trailing: PopupMenuButton(
                  onSelected: (value) async {
                    if (value == 1) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return UpdateGradeDialog(
                            grade.id,
                            grade.class_id,
                            widget.userId,
                          );
                        },
                      );
                    } else if (value == 2) {
                      var success = await ref.read(
                        deleteGradeProvider(
                          DeleteGradeRequest(
                              grade.id, widget.classId, widget.userId),
                        ).future,
                      );
                      if (!mounted) return;
                      if (success) {
                        ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                          const SnackBar(
                            content: Text('Deleted grade sucessfully'),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                          const SnackBar(
                            content: Text('Failed to delete grade!'),
                          ),
                        );
                      }
                      ref.invalidate(
                        gradesForUserInClassProvider(
                            widget.classId, widget.userId),
                      );
                    }
                  },
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: Text("Update Grade"),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text("Delete Grade"),
                    ),
                  ],
                ),
              );
            },
            itemCount: grades.length,
          );
        },
        error: (_, __) {
          print(_);
          print(__);
          return const Text('Error');
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class UpdateGradeDialog extends ConsumerStatefulWidget {
  final int gradeId;
  final int classId;
  final int userId;
  const UpdateGradeDialog(
    this.gradeId,
    this.classId,
    this.userId, {
    super.key,
  });

  @override
  ConsumerState<UpdateGradeDialog> createState() => _UpdateGradeDialogState();
}

class _UpdateGradeDialogState extends ConsumerState<UpdateGradeDialog> {
  final controller = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Update Grade'),
      content: TextField(
        controller: controller,
        onSubmitted: (value) => doStuff(),
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
        ),
      ],
    );
  }

  void doStuff() async {
    final success = await ref.read(
      updateGradeProvider(
        UpateGradeRequest(
          widget.gradeId,
          widget.classId,
          widget.userId,
          double.tryParse(controller.text) ?? 0,
        ),
      ).future,
    );

    if (!mounted) return;
    if (success) {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        const SnackBar(content: Text('Updated Grade Sucessfully')),
      );
    } else {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        const SnackBar(content: Text('Failed to update grade')),
      );
    }
    ref.invalidate(
      gradesForUserInClassProvider(widget.classId, widget.userId),
    );
  }
}

class CreateGradeDialog extends ConsumerStatefulWidget {
  final int classId;
  final int userId;
  const CreateGradeDialog(
    this.classId,
    this.userId, {
    super.key,
  });

  @override
  ConsumerState<CreateGradeDialog> createState() => _CreateGradeDialogState();
}

class _CreateGradeDialogState extends ConsumerState<CreateGradeDialog> {
  final controller = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Create Grade'),
      content: TextField(
        controller: controller,
        onSubmitted: (value) => doStuff(),
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
          child: const Text('Create'),
        ),
      ],
    );
  }

  void doStuff() async {
    final success = await ref.read(
      createGradeProvider(
        CreateGradeRequest(
          widget.classId,
          widget.userId,
          double.tryParse(controller.text) ?? 0,
        ),
      ).future,
    );

    if (!mounted) return;
    if (success) {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        const SnackBar(content: Text('Created Grade Sucessfully')),
      );
    } else {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        const SnackBar(content: Text('Failed to create grade')),
      );
    }
    ref.invalidate(
      gradesForUserInClassProvider(widget.classId, widget.userId),
    );
  }
}
