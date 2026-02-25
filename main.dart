import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String title = 'Aplikasi  Pertamaku';
    String name = 'Agum Aidil Saepul Rohman';
    String message = 'Halo nama saya $name, Selamat Datang di $title';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text(title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(message),
            Text(message),
            Text(message),
            Text(message),
          ],
        ),
      ),
    );
  }
}