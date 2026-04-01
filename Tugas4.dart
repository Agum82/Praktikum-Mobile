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
  String name = 'Gelas';
  String photo = 'https://picsum.photos/200/300';
  int qty = 0;
  int price = 15000; // Harga satuan

  @override
  Widget build(BuildContext context) {
    // Menghitung total harga
    int totalPrice = qty * price;

    return Scaffold(
      body: Column(
        children: [
          Card(
            elevation: 4,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  // Bagian Informasi Produk
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(height: 8),
                        Image.network(
                          photo,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Total: Rp ${totalPrice.toString()}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold, 
                            fontSize: 16, 
                            color: Colors.purple
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // Bagian Kontrol Jumlah (Counter)
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline, color: Colors.red),
                          onPressed: () {
                            setState(() {
                              if (qty > 0) qty--; // Mencegah angka minus
                            });
                          },
                        ),
                        Text(
                          qty.toString(),
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          icon: Icon(Icons.add_circle_outline, color: Colors.green),
                          onPressed: () {
                            setState(() {
                              qty++;
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
