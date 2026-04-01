import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp(name: 'Tehnik Informatika', year: 2026)));
}

class MyApp extends StatelessWidget {
  final String name;
  final int year;
  MyApp({required this.name, required this.year});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Pertemuan 4'),
      ),

      body: Container(margin: EdgeInsets.all(10), child: NumberScreen()),
    );
  }
}

class NumberScreen extends StatefulWidget {
  @override
  _NumberScreenState createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  String name = 'gelas';
  String photo = 'https://picsum.photos/200/300';
  int qty = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    flex: 20,
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(fontWeight: .bold, fontSize: 16),
                        ),
                        Image.network(
                          photo,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Rp.15.000',
                          style: TextStyle(fontWeight: .bold, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Row(
                      children: [
                        Text(qty.toString()),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              qty++;
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            setState(() {
                              qty--;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
