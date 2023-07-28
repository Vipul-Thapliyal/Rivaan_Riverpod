import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivaan_riverpod/home_screen.dart';
import 'package:rivaan_riverpod/user.dart';
import 'package:http/http.dart' as http;

final fetchUserProvider = FutureProvider((ref) {
  // String url = "https://jsonplaceholder.typicode.com/users/1";
  String url = "https://jsonplaceholder.typicode.com/usesddfrs";
  return http.get(Uri.parse(url)).then((value) => User.fromJson(value.body));
});

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
