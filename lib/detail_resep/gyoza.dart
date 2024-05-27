import 'package:flutter/material.dart';

class GyozaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gyoza'),
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
              'images/resep_gyoza.png',
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
                    'Gyoza',
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
                        '30 menit',
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
                  Text('- 200 gram daging ayam cincang'),
                  Text('- 100 gram udang cincang'),
                  Text('- 1/2 buah wortel, parut'),
                  Text('- 1 batang daun bawang, iris halus'),
                  Text('- 1 sdm saus tiram'),
                  Text('- 1 sdm kecap asin'),
                  Text('- 1 sdm minyak wijen'),
                  Text('- 1 sdt garam'),
                  Text('- 1/2 sdt merica bubuk'),
                  Text('- 1/2 sdt gula pasir'),
                  Text('- 1/2 bungkus kulit gyoza'),
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
                  Text('1. Campur semua bahan isian dalam satu wadah.'),
                  Text('2. Ambil selembar kulit gyoza, beri isian di tengah.'),
                  Text(
                      '3. Lipat kulit menjadi setengah lingkaran, kemudian tekan-tekan pinggirnya.'),
                  Text('4. Panaskan minyak dalam wajan anti lengket.'),
                  Text('5. Goreng gyoza hingga bagian bawahnya kecokelatan.'),
                  Text(
                      '6. Tuangkan air ke wajan dan tutup, masak hingga air menguap.'),
                  Text('7. Angkat dan sajikan dengan saus gyoza.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
