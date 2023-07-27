import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivaan_riverpod/main.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  void onSubmit(WidgetRef ref, String value) {
    ref.read(nameProvider.notifier).update((state) => value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// WidgetRef allows us to communicate from widgets to other providers
    final name = ref.watch(nameProvider) ?? "";
    final nameRead = ref.read(nameProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("RiverPod"),
      ),
      body: Column(
        children: [
          TextField(
            onSubmitted: (value) => onSubmit(ref, value),
          ),
          Center(
            child: Text(name),
          )
        ],
      ),
    );
  }
}
