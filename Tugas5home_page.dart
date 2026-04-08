import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name;
  final int price;
  final String imageUrl;
  final String description;

  const HomePage({
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
      body: Column(
        crossAxisAlignment: .start,
        children: [
          Image.network(imageUrl, width: 200, height: 300, fit: BoxFit.cover),
          Text('Harga: $price', style: TextStyle(fontSize: 16)),
          Text(name, style: TextStyle(fontSize: 18, fontWeight: .bold)),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Lihat Detail', style: TextStyle(fontSize: 14)),
            onPressed: () {
              Navigator.pushNamed(context, '/scond');
            },
          ),
        ],
      ),
    );
  }
}
