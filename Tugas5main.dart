import 'package:flutter/material.dart';
import 'second_page.dart';
import 'home_page.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String name = "Produk A";
  final int price =1000000;
  final String imageUrl = "https://picsum.photos/200/300";
  final String description = "Deskripsi Produk A";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => 
            HomePage(name: name,
             imageUrl: imageUrl,
              price: price),
        '/second': (context) => SecondPage(),
      },
    );
  }
}
