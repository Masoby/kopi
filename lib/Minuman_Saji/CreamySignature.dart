import 'package:flutter/material.dart';

void main() {
  runApp(AplikasiKopi());
}

class AplikasiKopi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayarDetailKopi(),
    );
  }
}

class LayarDetailKopi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Aksi untuk tombol kembali
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              // Aksi untuk tombol favorit
            },
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bagian Gambar
            Center(
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage('assets/coffee.jpg'), // Ganti dengan gambar Anda
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Judul dan rating
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CREAMY SIGNATURE',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.teal),
                    SizedBox(width: 4),
                    Text('4.7'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),

            // Opsi Ukuran Kopi
            Text(
              'Ukuran Kopi',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                ChoiceChip(
                  label: Text('Small'),
                  selected: true, // Tentukan apakah dipilih
                  onSelected: (selected) {
                    // Aksi saat dipilih
                  },
                  selectedColor: Colors.teal, // Warna saat dipilih
                  backgroundColor: Colors.grey[300], // Warna saat tidak dipilih
                  labelStyle: TextStyle(
                    color: Colors.white, // Warna teks saat dipilih
                  ),
                ),
                SizedBox(width: 8),
                ChoiceChip(
                  label: Text('Large'),
                  selected: false, // Tentukan apakah dipilih
                  onSelected: (selected) {
                    // Aksi saat dipilih
                  },
                  selectedColor: Colors.teal, // Warna saat dipilih
                  backgroundColor: Colors.grey[300], // Warna saat tidak dipilih
                  labelStyle: TextStyle(
                    color: Colors.black, // Warna teks saat tidak dipilih
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Bagian Tentang
            Text(
              'Tentang',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Kelembutan susu berpadu sempurna dengan green bean coffee yang ringan namun beraroma kuat. Creamy Signature memberikan tekstur yang lembut dengan cita rasa yang kaya, menawarkan pengalaman kopi yang lebih segar namun tetap memanjakan. Cocok bagi kamu yang ingin menikmati kopi dengan sentuhan krim yang memukau.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            Spacer(),

            // Harga dan tombol tambah ke keranjang
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'RP 18.500',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Aksi saat tombol "Tambah ke Keranjang" ditekan
                  },
                  child: Text('Tambah ke Keranjang'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
