import 'package:flutter/material.dart';

class KirimData extends StatelessWidget {
  final String nama;

  const KirimData({super.key, required this.nama });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kirim Data')),
      body:    Center(
        child: Text(
          'Nama saya adalah $nama',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
