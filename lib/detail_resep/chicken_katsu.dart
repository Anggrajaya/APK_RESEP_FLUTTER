import 'package:flutter/material.dart';

class ChickenKatsuPage extends StatelessWidget {
  const ChickenKatsuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicken Katsu'),
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
              'images/resep_chicken_katsu.png',
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
                    'Chicken Katsu',
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
                        '250 cal',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 16),
                      Icon(Icons.people, size: 20),
                      SizedBox(width: 4),
                      Text(
                        '2 porsi',
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
                  Text('- 2 buah dada ayam, fillet'),
                  Text('- 1 butir telur, kocok lepas'),
                  Text('- 1 cangkir tepung roti'),
                  Text('- 2 sdm tepung terigu'),
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
                  Text('1. Lumuri dada ayam dengan garam dan merica.'),
                  Text(
                      '2. Balur ayam ke dalam tepung terigu, kemudian telur, dan tepung roti.'),
                  Text(
                      '3. Goreng ayam dalam minyak panas hingga kuning kecokelatan.'),
                  Text('4. Angkat dan tiriskan.'),
                  Text('5. Potong-potong ayam katsu dan sajikan.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
