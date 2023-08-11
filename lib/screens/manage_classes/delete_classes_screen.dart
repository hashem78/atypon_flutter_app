import 'package:atypon_app/state/classes/classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeleteClassessScreen extends ConsumerStatefulWidget {
  const DeleteClassessScreen({super.key});

  @override
  ConsumerState<DeleteClassessScreen> createState() =>
      _DeleteClassessScreenState();
}

class _DeleteClassessScreenState extends ConsumerState<DeleteClassessScreen> {
  @override
  Widget build(BuildContext context) {
    final clazzs = ref.watch(classesProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Delete Classess')),
      body: clazzs.when(
        data: (clazzs) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final clazz = clazzs[index];

              return ListTile(
                leading: CircleAvatar(child: Text(clazz.id.toString())),
                title: Text(clazz.name),
                trailing: IconButton(
                  onPressed: () async {
                    final response =
                        await ref.read(deleteClassProvider(clazz.id).future);

                    if (!mounted) return;

                    if (!response) {
                      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                        const SnackBar(content: Text('Failed to delete class')),
                      );
                    } else {
                      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                        SnackBar(
                          content: Text(
                            'Deleted class ${clazz.name}',
                          ),
                        ),
                      );
                    }
                    ref.invalidate(classesProvider);
                  },
                  icon: const Icon(Icons.close),
                ),
              );
            },
            itemCount: clazzs.length,
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
