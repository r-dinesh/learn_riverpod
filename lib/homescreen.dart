import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/main.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  void onSubmit(String value, WidgetRef ref) {
    ref.read(userProvider.notifier).updateName(value);
  }

  void onSubmitAge(String value, WidgetRef ref) {
    ref.read(userProvider.notifier).updateAge(int.tryParse(value) ?? 0);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        children: [
          Center(child: Text(user.name)),
          TextField(onSubmitted: (value) => onSubmit(value, ref)),
          TextField(onSubmitted: (value) => onSubmitAge(value, ref)),
          Center(child: Text(user.age.toString())),
        ],
      ),
    );
  }
}
