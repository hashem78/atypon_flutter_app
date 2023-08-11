import 'package:atypon_app/dtos/create_class_request/createclassrequest.dart';
import 'package:atypon_app/state/classes/classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateClassesScreen extends ConsumerStatefulWidget {
  final int creatorId;
  const CreateClassesScreen(this.creatorId, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateClassesScreenState();
}

class _CreateClassesScreenState extends ConsumerState<CreateClassesScreen> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Classes'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              autofocus: true,
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Name',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => doStuff(context),
            child: const Text('Create Class'),
          )
        ],
      ),
    );
  }

  void doStuff(BuildContext context) async {
    var name = nameController.text;

    var response = await ref.read(createClassProvider(
      CreateClassRequest(widget.creatorId, name),
    ).future);
    if (!mounted) return;
    if (response == -1) {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        const SnackBar(content: Text('Class already exists!')),
      );
    } else {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        SnackBar(
          content: Text(
            'Created class $name with id $response',
          ),
        ),
      );
    }
  }
}
