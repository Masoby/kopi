import 'package:flutter/material.dart';

void main() {
  runApp(KopiSusuApp());
}

class KopiSusuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: KopiSusuScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class KopiSusuScreen extends StatefulWidget {
  @override
  _KopiSusuScreenState createState() => _KopiSusuScreenState();
}

class _KopiSusuScreenState extends State<KopiSusuScreen> {
  String selectedSize = 'SMALL';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite, color: Colors.red),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/KopsuReguler.png', // Ganti dengan gambar Anda
                    height: 200,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'KOPI SUSU GULA AREN',
                    style: TextStyle(
                      fontSize: 24, // Ukuran font yang lebih besar
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      letterSpacing: 1.5, // Spasi antar huruf
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: Color(0xFF00796B), // Warna biru toska untuk background bintang
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, color: Colors.white, size: 16),
                        SizedBox(width: 5),
                        Text(
                          '4.8',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Coffee Size',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ChoiceChip(
                  label: Text('SMALL'),
                  selected: selectedSize == 'SMALL',
                  selectedColor: Color(0xFF5F6D6D), 
                  backgroundColor: Colors.grey[300], 
                  onSelected: (bool selected) {
                    setState(() {
                      selectedSize = 'SMALL';
                    });
                  },
                ),
                SizedBox(width: 10),
                ChoiceChip(
                  label: Text('LARGE'),
                  selected: selectedSize == 'LARGE',
                  selectedColor: Color(0xFF5F6D6D),
                  backgroundColor: Colors.grey[300],
                  onSelected: (bool selected) {
                    setState(() {
                      selectedSize = 'LARGE';
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'About',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Kombinasi unik dari green bean coffee berkualitas tinggi dengan sentuhan manis alami dari gula aren asli Nusantara. Rasanya yang kaya dan karamel lembut membuat minuman ini tidak hanya segar, tetapi juga penuh karakter, memberikan pengalaman kopi yang lebih otentik dan memikat.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'RP 15.000',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // Implementasikan fungsi untuk menambahkan ke keranjang
                        },
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF00A18E), // Warna hijau toska terang
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // Sudut sedikit bulat
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
