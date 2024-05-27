import 'package:flutter/material.dart';

class SupIkanPage extends StatelessWidget {
  const SupIkanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sup Ikan'),
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
              'images/recommended2.jpg',
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
                    'Sup Ikan',
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
                        '40 menit',
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
                        '4 porsi',
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
                  Text('- 500 gram ikan (gurame, kakap, atau nila)'),
                  Text('- 2 batang daun bawang, iris tipis'),
                  Text('- 2 batang serai, memarkan'),
                  Text('- 3 cm jahe, memarkan'),
                  Text('- 1 batang wortel, potong dadu'),
                  Text('- 1 buah tomat, potong dadu'),
                  Text('- Garam secukupnya'),
                  Text('- Merica secukupnya'),
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
                  Text(
                      '1. Rebus air, masukkan serai, jahe, daun bawang, dan garam.'),
                  Text('2. Setelah mendidih, masukkan ikan.'),
                  Text(
                      '3. Masak hingga ikan matang dan kuahnya meresap ke dalam ikan.'),
                  Text(
                      '4. Tambahkan wortel dan tomat, masak hingga sayuran matang.'),
                  Text('5. Koreksi rasa dengan garam dan merica.'),
                  Text('6. Angkat dan sajikan sup ikan hangat.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
