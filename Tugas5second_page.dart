import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String name;
  final int price;
  final String imageUrl;
  final String description;

  const SecondPage({
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
        title: const Text("Halaman Kedua", style: TextStyle(color: Colors.black87)),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            width: double.infinity,
            height: 280,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name, 
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
                ),
                const SizedBox(height: 8),
                Text(
                  'Rp $price', 
                  style: const TextStyle(fontSize: 20, color: Colors.green, fontWeight: FontWeight.w600)
                ),
                const SizedBox(height: 8),
                Text(
                  description, 
                  style: const TextStyle(fontSize: 16)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
