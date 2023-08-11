import 'package:atypon_app/dtos/update_classs_name_request/updateclassnamerequest.dart';
import 'package:atypon_app/models/class/class.dart';
import 'package:atypon_app/state/classes/classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpdateClassNameDialog extends ConsumerStatefulWidget {
  const UpdateClassNameDialog({
    super.key,
    required this.clazz,
  });

  final Class clazz;

  @override
  ConsumerState<UpdateClassNameDialog> createState() =>
      _UpdateEmailDialogState();
}

class _UpdateEmailDialogState extends ConsumerState<UpdateClassNameDialog> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Update ${widget.clazz.name}\'s name'),
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
      updateClassProvider(
        UpdateClassNameRequest(widget.clazz.id, controller.text),
      ).future,
    );
    if (!mounted) return;
    if (!response) {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        const SnackBar(content: Text('Failed to update class!')),
      );
    } else {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        SnackBar(
          content: Text(
            'Updated name to ${controller.text}',
          ),
        ),
      );

      if (!mounted) return;
      Navigator.pop(context);
      ref.invalidate(classesProvider);
    }
  }
}
