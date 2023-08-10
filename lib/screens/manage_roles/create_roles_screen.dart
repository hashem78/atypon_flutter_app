import 'package:atypon_app/state/role/roles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateRolesScreen extends ConsumerStatefulWidget {
  const CreateRolesScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateRolesScreenState();
}

class _CreateRolesScreenState extends ConsumerState<CreateRolesScreen> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Roles'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              autofocus: true,
              controller: controller,
              onSubmitted: (val) => doStuff(context),
            ),
          ),
          ElevatedButton(
            onPressed: () => doStuff(context),
            child: const Text('Create Role'),
          )
        ],
      ),
    );
  }

  void doStuff(BuildContext context) async {
    var name = controller.text;
    var response = await ref.read(createRoleProvider(name).future);
    if (!mounted) return;
    if (response == -1) {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        const SnackBar(content: Text('Role already exists!')),
      );
    } else {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        SnackBar(
          content: Text(
            'Created Role! $name with id $response',
          ),
        ),
      );
    }
  }
}
