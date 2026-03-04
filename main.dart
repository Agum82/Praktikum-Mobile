import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget{
  build(context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          leading: Icon(Icons.home),
          title: Text('Aplikasi Pertamaku',),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(children: [Icon(Icons.archive), Text("Artikel Baru")]),
              Card(
                child: Column(
                  children: [
                    Image.network('https://www.kbb.com/car-advice/sports-car-buying-guide/'),
                    Text("Judul Artikel Terbaru"),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Komentar',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ),
                ListView(
                  shrinkWrap: true,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsetsGeometry.all(3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Agum ASR'),
                            Text('Kelas A'),

                          ],
                
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                     
            ],
          ),

        ),
      ),
    );
  }
}
