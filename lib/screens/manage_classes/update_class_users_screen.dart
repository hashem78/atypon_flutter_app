import 'package:atypon_app/dtos/add_user_to_class_request/addusertoclassrequest.dart';
import 'package:atypon_app/dtos/remove_user_from_class_request/removeuserfromclassrequest.dart';
import 'package:atypon_app/state/classes/classes.dart';
import 'package:atypon_app/state/users/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpdateClassUsersScreen extends ConsumerStatefulWidget {
  final int classId;
  const UpdateClassUsersScreen(this.classId, {super.key});

  @override
  ConsumerState<UpdateClassUsersScreen> createState() =>
      _UpdateUserClassesScreenState();
}

class _UpdateUserClassesScreenState
    extends ConsumerState<UpdateClassUsersScreen> {
  @override
  Widget build(BuildContext context) {
    final usersForClass = ref.watch(getUsersForClassProvider(widget.classId));
    final allUsers = ref.watch(usersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Users'),
      ),
      body: usersForClass.when(
        data: (classUsers) {
          return allUsers.when(
            data: (all) {
              final bools = List.generate(
                all.length,
                (_) => ValueNotifier(false),
              );

              for (int i = 0; i < all.length; i++) {
                var user = all[i];
                for (var classUser in classUsers) {
                  if (classUser.email == user.email) {
                    bools[i].value = true;
                    break;
                  }
                }
              }

              return ListView.builder(
                itemBuilder: (context, index) {
                  final user = all[index];

                  return ValueListenableBuilder(
                    valueListenable: bools[index],
                    builder: (context, value, child) {
                      return CheckboxListTile(
                        title: Text(user.email),
                        onChanged: (bool? value) async {
                          if (value == null) return;
                          if (value) {
                            await ref.read(
                              addUserToClassProvider(
                                AddUserToClassRequest(
                                  user.id,
                                  widget.classId,
                                ),
                              ).future,
                            );
                          } else {
                            await ref.read(
                              removeUserFromClassProvider(
                                RemoveUserFromClassRequest(
                                  user.id,
                                  widget.classId,
                                ),
                              ).future,
                            );
                          }
                          if (mounted) {
                            ref.invalidate(classesProvider);
                            bools[index].value = value;
                          }
                        },
                        value: value,
                      );
                    },
                  );
                },
                itemCount: all.length,
              );
            },
            error: (_, __) => const Text('Error'),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
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
