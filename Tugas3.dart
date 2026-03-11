import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green, 
          title: Text("FlexBox Flutter"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
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
                          'https://picsum.photos/200',
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Text(
                        'Selamat Datang!',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                      width: double.infinity,
                      height: 200, 
                      colorBlendMode: BlendMode.darken,
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: Text(
                        'FLASH SALE UP TO 50%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.green),
                          shape: WidgetStateProperty.all(StadiumBorder()),
                        ),
                        child: Text("Baju", style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(width: 8),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.green),
                          shape: WidgetStateProperty.all(StadiumBorder()),
                        ),
                        child: Text("Celana", style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(width: 8),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.green),
                          shape: WidgetStateProperty.all(StadiumBorder()),
                        ),
                        child: Text("Sepatu", style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(width: 8),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.green),
                          shape: WidgetStateProperty.all(StadiumBorder()),
                        ),
                        child: Text("Aksesoris", style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(width: 8),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.green),
                          shape: WidgetStateProperty.all(StadiumBorder()),
                        ),
                        child: Text("Elektronik", style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(width: 8),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.green),
                          shape: WidgetStateProperty.all(StadiumBorder()),
                        ),
                        child: Text("Buku", style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                
                GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 0.65, 
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Image.network(
                            'https://picsum.photos/id/21/200/200', 
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 200, 
                          ),
                          SizedBox(height: 8),
                          Text("Sepatu"),
                          Text("Rp. 200.000"),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Image.network(
                            'https://picsum.photos/id/1080/200/200', 
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 200, 
                          ),
                          SizedBox(height: 8),
                          Text("Satu Set Garpu"),
                          Text("Rp. 20.000"),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Image.network(
                            'https://picsum.photos/id/20/200/200', 
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 200, 
                          ),
                          SizedBox(height: 8),
                          Text("Tas Ransel"),
                          Text("Rp. 150.000"),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Image.network(
                            'https://picsum.photos/id/30/200/200',
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 200, 
                          ),
                          SizedBox(height: 8),
                          Text("Topi"),
                          Text("Rp. 50.000"),
                        ],
                      ),
                    ),
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
