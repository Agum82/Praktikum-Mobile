import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          leading: const Icon(Icons.home),
          title: const Text('Gunung Rinjani - Jalur Pendakian Terbaik'),
        ),
        
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Row(
                  children: const [
                    Icon(Icons.archive),
                    SizedBox(width: 5),
                    Text("Artikel Baru"),
                  ],
                ),
                const SizedBox(height: 10),
                
                
                Card(
                  child: Column(
                    children: [
                      Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Gunung_rinjani.jpg/1280px-Gunung_rinjani.jpg',
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            
                            Text(
                              "Pengantar tentang Jalur Gunung Rinjani",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, 
                                fontSize: 18,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Gunung Rinjani di Lombok, Nusa Tenggara Barat, adalah salah satu gunung berapi aktif tertinggi di Indonesia dengan ketinggian 3.726 mdpl. Jalur Gunung Rinjani menjadi magnet bagi pendaki karena menawarkan kombinasi keindahan alam, tantangan fisik, dan kekayaan budaya lokal. Memilih jalur pendakian yang tepat sangat penting agar pengalaman mendaki semakin maksimal, baik untuk pemula maupun pendaki berpengalaman. Setiap jalur memiliki karakteristik, tingkat kesulitan, dan pesona tersendiri yang wajib kamu ketahui sebelum memulai petualangan",
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),

                            
                            Text(
                              "Rute Pendakian Sembalun untuk Jalur Gunung Rinjani",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, 
                                fontSize: 18,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Rute Sembalun adalah jalur paling populer untuk pendakian Gunung Rinjani. Pendakian dimulai dari Desa Sembalun Lawang di sisi timur Rinjani. Jalur ini terkenal dengan hamparan padang savana yang luas dan pemandangan spektakuler sepanjang perjalanan. Tingkat kesulitan rute Sembalun relatif lebih rendah dibandingkan jalur lain, sehingga cocok untuk pemula maupun pendaki yang ingin menikmati panorama tanpa harus melewati trek hutan yang lebat.\n\nPendakian via Sembalun biasanya memakan waktu 2-3 hari untuk mencapai puncak dan kembali ke Sembalun. Jika ingin turun melalui jalur Senaru, waktu tempuh bisa bertambah menjadi 4-5 hari. Daya tarik utama rute ini adalah savana hijau, sunrise dari Plawangan Sembalun, dan pemandangan Danau Segara Anak dari ketinggian",
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),

                            
                            Text(
                              "Keunggulan Rute Pendakian Senaru",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, 
                                fontSize: 18,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Jalur Senaru adalah rute legendaris yang dimulai dari Desa Senaru di sisi utara Rinjani. Berbeda dengan Sembalun, jalur ini menawarkan trek hutan tropis yang lebat dan sejuk, cocok untuk kamu yang suka suasana alami dan penuh petualangan. Jalur Senaru juga dikenal memiliki trek hutan terpanjang di...",
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),

                           
                            Text(
                              "Tips Pendakian Via Torean",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, 
                                fontSize: 18,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Jalur Torean mulai populer di kalangan pendaki yang ingin merasakan sensasi berbeda saat mendaki Gunung Rinjani. Rute ini menawarkan trek yang lebih alami, melewati lembah, sungai, dan air terjun yang menakjubkan. Berikut beberapa tips penting jika memilih jalur Torean:\n"
                              "– Pastikan kondisi fisik prima karena medan cukup menantang dan panjang.\n"
                              "– Gunakan jasa guide lokal untuk menghindari risiko tersesat, karena jalur ini belum sepopuler Sembalun dan Senaru.\n"
                              "– Bawa perlengkapan tahan air dan jas hujan, terutama saat musim hujan.\n"
                              "– Siapkan logistik yang cukup, karena fasilitas di jalur ini lebih terbatas.\n"
                              "– Selalu cek kondisi cuaca dan ikuti petunjuk petugas taman nasional.\n\n"
                              "Jalur Torean sangat cocok untuk petualang sejati yang ingin mengeksplorasi sisi alami Rinjani dan menikmati panorama air terjun serta lembah eksotis.",
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),

                            
                            Text(
                              "Panduan Lengkap Memilih Rute Pendakian yang Tepat di Jalur Gunung Rinjani",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, 
                                fontSize: 18,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Memilih jalur pendakian sangat penting untuk memastikan keselamatan dan kenyamanan selama perjalanan di Gunung Rinjani. Pertimbangkan beberapa faktor berikut:\n"
                              "– Tingkat pengalaman: Pemula disarankan memilih Sembalun atau Senaru, sedangkan pendaki berpengalaman bisa mencoba Torean, Timbanuh, atau Aik Berik.\n"
                              "– Durasi pendakian: Sembalun dan Senaru biasanya memakan waktu 2-5 hari, tergantung rute dan tujuan akhir.\n"
                              "– Tujuan utama: Apakah ingin mencapai puncak, menikmati Danau Segara Anak, atau sekadar trekking singkat.\n"
                              "– Fasilitas dan akses: Sembalun dan Senaru memiliki basecamp dan fasilitas pendukung yang lengkap.\n"
                              "– Musim pendakian: Musim kemarau (Mei-Oktober) adalah waktu terbaik untuk mendaki.\n"
                              "Dengan pertimbangan matang, kamu bisa menentukan jalur Gunung Rinjani yang paling sesuai dengan kebutuhan dan harapanmu\n",
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
