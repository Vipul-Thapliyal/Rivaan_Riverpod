import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivaan_riverpod/main.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  void onSubmit(WidgetRef ref, String value) {
    ref.read(userProvider.notifier).updateName(value);
  }

  void onSubmitAge(WidgetRef ref, String value) {
    ref.read(userProvider.notifier).updateAge(int.parse(value));
  }



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// WidgetRef allows us to communicate from widgets to other providers
    final user = ref.watch(userProvider.select((value) => value.age)); /// Widget tree will rerun when age property changes

    return Scaffold(
      appBar: AppBar(
        title: Text(user.toString()),
      ),
      body: Column(
        children: [
          TextField(
            onSubmitted: (value) => onSubmit(ref, value),
          ),
          TextField(
            onSubmitted: (value) => onSubmitAge(ref, value),
          ),
          Center(
            child: Text(user.toString()),
          )
        ],
      ),
    );
  }
}
