import 'package:flutter/material.dart';

class DaifukuMochiPage extends StatelessWidget {
  const DaifukuMochiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daifuku Mochi'),
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
              'images/resep_daifuku_mochi.png',
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
                    'Daifuku Mochi',
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
                        '20 menit',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 16),
                      Icon(Icons.local_fire_department, size: 20),
                      SizedBox(width: 4),
                      Text(
                        '200 cal',
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
                  Text('- Mochi berbentuk bulat'),
                  Text('- Anko (pasta kacang merah)'),
                  Text('- Tepung maizena untuk menggulung'),
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
                  Text('1. Siapkan mochi berbentuk bulat.'),
                  Text('2. Isi dengan anko (pasta kacang merah).'),
                  Text('3. Gulung mochi dengan tepung maizena.'),
                  Text('4. Daifuku Mochi siap disajikan.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
