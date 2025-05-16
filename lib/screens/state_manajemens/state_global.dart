import 'package:flutter/material.dart';

class StateGlobal extends StatelessWidget {
  const StateGlobal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Global: Provider"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: () {}, child: const Text("-1")),
          const Text("X", style: TextStyle(fontSize: 24)),
          ElevatedButton(onPressed: () {}, child: const Text("+1")),
        ],
      ),
    );
  }
}
