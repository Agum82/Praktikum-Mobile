import 'package:flutter/material.dart';
import 'home_page.dart';
import 'second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String name = "Produk A";
    const int price = 100000;
    const String imageUrl = "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80";
    const String description = "Deskripsi Produk A";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(
              name: name,
              imageUrl: imageUrl,
              price: price,
              description: description,
            ),
        // RUTE INI YANG MENENTUKAN HALAMAN KEDUA BISA DIBUKA ATAU TIDAK
        '/second': (context) => const SecondPage(
              name: name,
              price: price,
              imageUrl: imageUrl,
              description: description,
            ),
      },
    );
  }
}
