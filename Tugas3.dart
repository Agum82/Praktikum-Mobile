import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.amber, title: Text("FLEXBOX")),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          'https://picsum.photos/200/300',
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Text(
                        'selamat datang Di Toko',
                        style: TextStyle(fontSize: 16, fontWeight: .bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Stack(
                  children: [
                    Image.network(
                      'https://picsum.photos/400/200',
                      fit: BoxFit.cover,
                      width: .infinity,
                      colorBlendMode: BlendMode.darken,
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: Text(
                        'Flash',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: .bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.green)),
                      child: Text(
                        "baju",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.green)),
                      child: Text(
                        "bahu",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.green)),
                      child: Text(
                        "balo",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.green)),
                      child: Text(
                        "bola",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,
                  children: [
                    Image.network(
                      'https://picsum.photos/100/200',
                      fit: BoxFit.cover,
                      width: .infinity,
                      height: 200,
                    ),
                    Text("sweater"),
                    Text("Rp. 200.000"),
                    Image.network(
                      'https://picsum.photos/id/237/200/300',
                      fit: BoxFit.cover,
                      width: .infinity,
                      height: 200,
                    ),
                    Text("Anjing"),
                    Text("Rp. 200.000"),
                    Image.network(
                      'https://picsum.photos/seed/picsum/300',
                      fit: BoxFit.cover,
                      width: .infinity,
                      height: 200,
                    ),
                    Text("Anjing"),
                    Text("Rp. 200.000"),
                    Image.network(
                      'https://picsum.photos/300?grayscale',
                      fit: BoxFit.cover,
                      width: .infinity,
                      height: 200,
                    ),
                    Text("Singa Laut"),
                    Text("Rp. 200.000"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
