import 'package:flutter/material.dart';

class KirimTerimaData extends StatelessWidget {
  final int nilai1;
  KirimTerimaData({
    super.key,
    required this.nilai1,
  });

  final inputNilai2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kirim & Terima Data')),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  initialValue: nilai1.toString(),
                  textAlign: TextAlign.center,
                  readOnly: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nilai 1',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  controller: inputNilai2,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Input Nilai 2',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  int nilai2Cek = int.tryParse(inputNilai2.text) ?? 0;
                  int hitung = nilai1 + nilai2Cek;
                  String bacaHitung = "$nilai1 + $nilai2Cek = $hitung";
                  Navigator.pop(context, bacaHitung);
                },
                child: const Text('Hitung dan Tutup'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
