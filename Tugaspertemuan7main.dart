import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Productpage()));
}

class Product {
  String name;
  int price;

  Product({required this.name, required this.price});
}

class Productpage extends StatefulWidget {
  const Productpage({super.key});

  @override
  State<Productpage> createState() => _ProductpageState();
}

class _ProductpageState extends State<Productpage> {
  List<Product> products = [
    Product(name: "nasi Padang", price: 1500000),
    Product(name: "chicken", price: 600000),
    Product(name: "babi guling", price: 1000000),
  ];
  void addProduct(Product product) {
    setState(() {
      products.add(product);
    });
  }

  void updateProduct(int index, Product product) {
    setState(() {
      products[index] = product;
    });
  }

  void deleteProduct(int index) {
    setState(() {
      products.removeAt(index);
    });
  }

  void showForm({Product? product, int? index}) {
    TextEditingController nameController = TextEditingController(
      text: product?.name ?? "",
    );
    TextEditingController priceController = TextEditingController(
      text: product?.price.toString() ?? "",
    );

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(product == null ? "Tambah Product" : "Update Product"),
          content: Column(
            mainAxisSize: .min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: "Nama Product"),
              ),
              TextField(
                controller: priceController,
                keyboardType: .number,
                decoration: InputDecoration(labelText: "Harga Product"),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              child: Text("simpan"),
              onPressed: () {
                final newProduct = Product(
                  name: nameController.text,
                  price: int.parse(priceController.text),
                );

                if (product == null) {
                  addProduct(newProduct);
                } else {
                  updateProduct(index!, newProduct);
                }
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CRUD Produk"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text("Rp ${products[index].price}"),
            trailing: Row(
              mainAxisSize: .min,
              children: [
                IconButton(
                  onPressed: () =>
                      showForm(product: products[index], index: index),
                  icon: Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: () => deleteProduct(index),
                  icon: Icon(Icons.delete),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showForm(),
        child: Icon(Icons.add),
      ),
    );
  }
}
