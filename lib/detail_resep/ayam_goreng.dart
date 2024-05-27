import 'package:flutter/material.dart';

class AyamGorengPage extends StatelessWidget {
  const AyamGorengPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayam Goreng'),
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
              'images/recommended1.jpg',
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
                    'Ayam Goreng',
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
                        '250 cal',
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
                  Text('- 1 ekor ayam, potong-potong'),
                  Text('- 3 siung bawang putih, haluskan'),
                  Text('- 1 sdm ketumbar bubuk'),
                  Text('- 1 sdt kunyit bubuk'),
                  Text('- Garam secukupnya'),
                  Text('- Minyak goreng secukupnya'),
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
                      '1. Cuci bersih ayam, lumuri dengan bawang putih, ketumbar, kunyit, dan garam.'),
                  Text('2. Diamkan selama 30 menit agar bumbu meresap.'),
                  Text(
                      '3. Panaskan minyak goreng, goreng ayam hingga matang dan kecokelatan.'),
                  Text('4. Angkat dan tiriskan.'),
                  Text('5. Sajikan ayam goreng dengan nasi hangat dan sambal.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
