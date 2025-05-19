import 'package:flutter/material.dart';
import 'package:master/screens/state_manajemens/state_global.dart';
import 'package:master/screens/state_manajemens/state_local.dart';

class StateManajemen extends StatelessWidget {
  const StateManajemen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Manajemen"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StateLocal(),
                    ),
                  );
                },
                child: const Text("State Local ")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StateGlobal(),
                    ),
                  );
                },
                child: const Text("State Global")),
          ],
        ),
      ),
    );
  }
}
