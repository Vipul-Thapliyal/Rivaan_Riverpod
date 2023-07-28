import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivaan_riverpod/home_screen.dart';
import 'package:rivaan_riverpod/user.dart';

// final userProvider = StateNotifierProvider<UserNotifier, User>(
//   (ref) => UserNotifier()
// );

final userChangeNotifierProvider = ChangeNotifierProvider((ref) => UserNotifierChange());

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Riverpod Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
