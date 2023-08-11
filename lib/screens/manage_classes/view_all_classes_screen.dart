import 'package:atypon_app/state/classes/classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ViewAllClassesScreen extends ConsumerWidget {
  const ViewAllClassesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final classes = ref.watch(classesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('View All classes'),
      ),
      body: classes.when(
        data: (classes) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final clazz = classes[index];

              return ListTile(
                leading: CircleAvatar(child: Text(clazz.id.toString())),
                title: Text(clazz.name),
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
