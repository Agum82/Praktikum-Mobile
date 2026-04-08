import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name;
  final int price;
  final String imageUrl;
  final String description;

  const HomePage({
    super.key,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Utama'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imageUrl, width: 200, height: 200, fit: BoxFit.cover),
            const SizedBox(height: 16),
            Text('Harga: Rp $price', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text(name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // KODE INI HARUS SAMA PERSIS DENGAN NAMA RUTE DI MAIN.DART
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Lihat Detail', style: TextStyle(fontSize: 14)),
            ),
          ],
        ),
      ),
    );
  }
}
