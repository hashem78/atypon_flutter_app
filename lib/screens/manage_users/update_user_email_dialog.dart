import 'package:atypon_app/dtos/update_user_request/updateuserrequest.dart';
import 'package:atypon_app/models/user/user.dart';
import 'package:atypon_app/state/users/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpdateUserEmailDialog extends ConsumerStatefulWidget {
  const UpdateUserEmailDialog({
    super.key,
    required this.user,
  });

  final User user;

  @override
  ConsumerState<UpdateUserEmailDialog> createState() =>
      _UpdateEmailDialogState();
}

class _UpdateEmailDialogState extends ConsumerState<UpdateUserEmailDialog> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Update ${widget.user.email}\'s email'),
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
      updateUserProvider(
        UpdateUserRequest(widget.user.id, email: controller.text),
      ).future,
    );
    if (!mounted) return;
    if (!response) {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        const SnackBar(content: Text('Failed to update user!')),
      );
    } else {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        SnackBar(
          content: Text(
            'Updated email to ${controller.text}',
          ),
        ),
      );

      if (!mounted) return;
      Navigator.pop(context);
      ref.invalidate(usersProvider);
    }
  }
}
