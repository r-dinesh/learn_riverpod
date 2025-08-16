import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_statenotifierprovider/user.dart';
import 'homescreen.dart';

//final nameProvider = StateProvider<String?>((ref) => null);
final userProvider = StateNotifierProvider(
  (ref) => UserNotifier(User(name: '', age: 0)),
);

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Riverpod Tutorial',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
