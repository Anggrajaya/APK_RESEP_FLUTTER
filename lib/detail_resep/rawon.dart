import 'package:flutter/material.dart';

class RawonPage extends StatelessWidget {
  const RawonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rawon'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Header
            Image.asset(
              'images/resep_rawon.png',
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Recipe Information
                  Text(
                    'Rawon',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.timer, size: 20),
                      SizedBox(width: 4),
                      Text(
                        '120 menit',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 16),
                      Icon(Icons.local_fire_department, size: 20),
                      SizedBox(width: 4),
                      Text(
                        '200 cal',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 16),
                      Icon(Icons.people, size: 20),
                      SizedBox(width: 4),
                      Text(
                        '6 porsi',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Ingredients
                  Text(
                    'Bahan-bahan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('- 500 gram daging sapi'),
                  Text('- 100 gram kacang kedelai hitam, rendam dan kukus'),
                  Text('- 3 lembar daun salam'),
                  Text('- 2 batang serai, memarkan'),
                  Text('- 2 cm lengkuas, memarkan'),
                  Text('- 1 liter air'),
                  Text('- 4 sendok makan minyak untuk menumis'),
                  Text('- 2 sendok teh garam'),
                  Text('- 1 sendok makan gula merah'),
                  Text('- 1 sendok makan air asam jawa'),
                  SizedBox(height: 16),
                  // Steps
                  Text(
                    'Langkah-langkah',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('1. Tumis bumbu halus hingga harum, masukkan daging sapi. Aduk rata.'),
                  Text('2. Masukkan kacang kedelai hitam, daun salam, serai, lengkuas. Aduk rata.'),
                  Text('3. Tuangkan air, aduk rata. Masak hingga daging empuk.'),
                  Text('4. Tambahkan garam, gula merah, dan air asam jawa. Aduk rata.'),
                  Text('5. Masak hingga bumbu meresap dan kuah mengental.'),
                  Text('6. Angkat dan sajikan.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
