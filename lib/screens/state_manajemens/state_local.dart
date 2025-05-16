import 'package:flutter/material.dart';

class StateLocal extends StatelessWidget {
  const StateLocal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Local: SetState()"),
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
