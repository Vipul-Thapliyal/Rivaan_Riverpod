import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivaan_riverpod/main.dart';

class MyWidget extends ConsumerStatefulWidget {
  const MyWidget({super.key});

  @override
  ConsumerState<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends ConsumerState<MyWidget> {
  @override
  Widget build(BuildContext context) {
    final name = ref.watch(nameProvider); /// We can access ref because of ConsumerState
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


class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// WidgetRef allows us to communicate from widgets to other providers
    final name = ref.watch(nameProvider);
    final nameRead = ref.read(nameProvider);
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
