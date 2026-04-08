import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String name;
  final int price;
  final String imageUrl;
  final String description;

  const SecondPage({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Kedua"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        crossAxisAlignment: .start,
        children: [
          Image.network(
            imageUrl,
            width: double.infinity,
            height: 500,
            fit: BoxFit.cover,
          ),
          Text(name, style: TextStyle(fontSize: 24, fontWeight: .bold)),
          Text(price, style: TextStyle(fontSize: 20, color: Colors.brown)),
          Text(description, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
