import 'package:atypon_app/dtos/add_role_to_user_request/addroletouserrequest.dart';
import 'package:atypon_app/dtos/remove_role_from_user_request/removerolefromuserrequest.dart';
import 'package:atypon_app/models/user/user.dart';
import 'package:atypon_app/state/role/roles.dart';
import 'package:atypon_app/state/users/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpdateUserRolesScreen extends ConsumerStatefulWidget {
  final User user;
  const UpdateUserRolesScreen(this.user, {super.key});

  @override
  ConsumerState<UpdateUserRolesScreen> createState() =>
      _UpdateUserRolesScreenState();
}

class _UpdateUserRolesScreenState extends ConsumerState<UpdateUserRolesScreen> {
  @override
  Widget build(BuildContext context) {
    final allRoles = ref.watch(rolesProvider);
    final myRoles = widget.user.roles;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Roles'),
      ),
      body: allRoles.when(
        data: (roles) {
          final bools = List.generate(
            roles.length,
            (_) => ValueNotifier(false),
          );

          for (int i = 0; i < roles.length; i++) {
            var role = roles[i];
            if (myRoles!.contains(role)) {
              bools[i].value = true;
            }
          }

          return ListView.builder(
            itemBuilder: (context, index) {
              final role = roles[index];

              return ValueListenableBuilder(
                valueListenable: bools[index],
                builder: (context, value, child) {
                  return CheckboxListTile(
                    title: Text(role.name),
                    onChanged: (bool? value) async {
                      if (value == null) return;
                      if (value) {
                        await ref.read(
                          addRoleToUserProvider(
                            AddRoleToUserRequest(widget.user.id, role.id),
                          ).future,
                        );
                      } else {
                        await ref.read(
                          removeRoleFromUserProvider(
                            RemoveRoleFromUserRequest(widget.user.id, role.id),
                          ).future,
                        );
                      }
                      if (mounted) {
                        ref.invalidate(usersProvider);
                        bools[index].value = value;
                      }
                    },
                    value: value,
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
