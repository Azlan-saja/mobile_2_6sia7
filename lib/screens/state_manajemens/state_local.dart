import 'package:flutter/material.dart';

class StateLocal extends StatefulWidget {
  const StateLocal({super.key});

  @override
  State<StateLocal> createState() => _StateLocalState();
}

class _StateLocalState extends State<StateLocal> {
  int nilaiCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Local: SetState()"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  nilaiCounter--;
                  // nilaiCounter = nilaiCounter - 1;
                });
              },
              child: const Text("-1")),
          Text("$nilaiCounter", style: const TextStyle(fontSize: 24)),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  nilaiCounter++;
                });
              },
              child: const Text("+1")),
        ],
      ),
    );
  }
}
