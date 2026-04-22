import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Productpage()));
}

// 1. Tambahkan parameter imageUrl di class Product
class Product {
  String name;
  int price;
  String imageUrl;

  Product({required this.name, required this.price, required this.imageUrl});
}

class Productpage extends StatefulWidget {
  const Productpage({super.key});

  @override
  State<Productpage> createState() => _ProductpageState();
}

class _ProductpageState extends State<Productpage> {
  // Tambahkan data dummy link gambar (contoh menggunakan placeholder)
  List<Product> products = [
    Product(
        name: "Nasi Padang",
        price: 1500000,
        imageUrl:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Nasi_Padang_Rendang.jpg/800px-Nasi_Padang_Rendang.jpg"),
    Product(
        name: "Chicken",
        price: 600000,
        imageUrl:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Fried_chicken_dinner.jpg/800px-Fried_chicken_dinner.jpg"),
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
    // 2. Buat controller baru untuk link gambar
    TextEditingController imageUrlController = TextEditingController(
      text: product?.imageUrl ?? "",
    );

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(product == null ? "Tambah Product" : "Update Product"),
          content: SingleChildScrollView( // Supaya form bisa di-scroll jika keyboard muncul
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: "Nama Product"),
                ),
                TextField(
                  controller: priceController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "Harga Product"),
                ),
                // Tambahkan TextField untuk input link gambar
                TextField(
                  controller: imageUrlController,
                  decoration: InputDecoration(labelText: "Link Gambar (URL)"),
                ),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              child: Text("Simpan"),
              onPressed: () {
                final newProduct = Product(
                  name: nameController.text,
                  price: int.tryParse(priceController.text) ?? 0,
                  imageUrl: imageUrlController.text, // Ambil teks dari controller gambar
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
            // 3. Gunakan properti leading untuk menampilkan gambar di sebelah kiri
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8), // Membuat sudut gambar agak membulat
              child: Image.network(
                products[index].imageUrl,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
                // Jika URL error atau kosong, tampilkan icon default agar tidak error merah
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 60,
                    height: 60,
                    color: Colors.grey[300],
                    child: Icon(Icons.image_not_supported, color: Colors.grey[600]),
                  );
                },
              ),
            ),
            title: Text(products[index].name),
            subtitle: Text("Rp ${products[index].price}"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
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
