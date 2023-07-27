import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivaan_riverpod/main.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// WidgetRef allows us to communicate from widgets to other providers
    final name = ref.watch(nameProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("RiverPod"),
      ),
      body: Column(
        children: [
          Center(
            child: Text(name),
          )
        ],
      ),
    );
  }
}
