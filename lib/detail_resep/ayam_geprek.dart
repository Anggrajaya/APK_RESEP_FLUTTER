import 'package:flutter/material.dart';

class AyamGeprekPage extends StatelessWidget {
  const AyamGeprekPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayam Geprek'),
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
              'images/resep_ayam_geprek.png',
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
                    'Ayam Geprek',
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
                        '45 menit',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 16),
                      Icon(Icons.local_fire_department, size: 20),
                      SizedBox(width: 4),
                      Text(
                        '300 cal',
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
                  Text('- 500 gram daging ayam fillet, potong tipis'),
                  Text('- 100 gram tepung terigu'),
                  Text('- 50 gram tepung maizena'),
                  Text('- 2 butir telur'),
                  Text('- Garam secukupnya'),
                  Text('- Merica secukupnya'),
                  Text('- Minyak untuk menggoreng'),
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
                  Text('1. Lumuri daging ayam dengan garam dan merica.'),
                  Text('2. Celupkan daging ayam ke dalam campuran tepung terigu dan tepung maizena.'),
                  Text('3. Celupkan ke dalam telur kocok.'),
                  Text('4. Goreng ayam hingga kecokelatan dan matang.'),
                  Text('5. Tiriskan ayam dan letakkan di atas sisi ayam menggunakan ulekan.'),
                  Text('6. Beri sambal dan tambahkan daun kemangi jika suka.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
