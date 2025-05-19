import 'package:flutter/material.dart';
import 'package:master/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class StateGlobal extends StatelessWidget {
  const StateGlobal({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CounterPriver>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Global: Provider"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () {
                provider.kurangi();
              },
              child: const Text("-1")),
          Text(provider.hasil, style: const TextStyle(fontSize: 24)),
          ElevatedButton(
              onPressed: () {
                provider.tambahin();
              },
              child: const Text("+1")),
        ],
      ),
    );
  }
}
