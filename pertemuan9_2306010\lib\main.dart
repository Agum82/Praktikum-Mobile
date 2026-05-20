import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'post.dart';
import 'photos.dart';
import 'providers/post_provider.dart';
import 'providers/photo_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PostProvider()),
        ChangeNotifierProvider(create: (_) => PhotoProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 1. Inisialisasi index awal dengan aman
  int _currentIndex = 0;

  // 2. Menghapus keyword const di sini agar tidak error compile
  final List<Widget> _pages = [const PostPage(), const PhotoPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 3. Menggunakan IndexedStack agar aman dari LateInitializationError
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: _currentIndex == 0
            ? Colors.indigo
            : Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.article), label: 'Posts'),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Photos'),
        ],
      ),
    );
  }
}
