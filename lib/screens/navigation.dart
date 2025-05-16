import 'package:flutter/material.dart';
import 'package:master/screens/navigations/kirim_data.dart';
import 'package:master/screens/navigations/kirim_terima_data.dart';
import 'package:master/screens/navigations/terima_data.dart';

class Navigation extends StatelessWidget {
  Navigation({super.key});

  final terimaData = TextEditingController();
  final inputNilai1 = TextEditingController();
  final hasilHitung = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layar Navigation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KirimData(nama: 'AzlansajaTV'),
                  ),
                );
              },
              child: const Text('Kirim Data'),
            ),
            const Divider(color: Colors.red),
            ElevatedButton(
              onPressed: () async {
                final data = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TerimaData(),
                  ),
                );
                if (data != null) {
                  terimaData.text = data;
                }
              },
              child: const Text('Terima Data'),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: terimaData,
                textAlign: TextAlign.center,
                readOnly: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const Divider(color: Colors.red),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: inputNilai1,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Input Nilai 1',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KirimTerimaData(
                        nilai1: int.tryParse(inputNilai1.text) ?? 0),
                  ),
                );
                if (result != null) {
                  hasilHitung.text = result;
                }
              },
              child: const Text('Kirim Data & Terima Data'),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: hasilHitung,
                readOnly: true,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
