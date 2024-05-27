import 'package:flutter/material.dart';

class DimsumPage extends StatelessWidget {
  const DimsumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dimsum'),
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
              'images/recommended3.jpg',
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
                    'Dimsum',
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
                        '60 menit',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 16),
                      Icon(Icons.local_fire_department, size: 20),
                      SizedBox(width: 4),
                      Text(
                        '180 cal',
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
                  Text('- 250 gram daging ayam giling'),
                  Text('- 150 gram udang kupas, cincang'),
                  Text('- 1 batang daun bawang, iris halus'),
                  Text('- 2 siung bawang putih, haluskan'),
                  Text('- 1 sdm saus tiram'),
                  Text('- 1 sdm kecap asin'),
                  Text('- 1 sdt garam'),
                  Text('- 1/2 sdt merica bubuk'),
                  Text('- 1/2 sdt gula pasir'),
                  Text('- 25 lembar kulit pangsit'),
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
                      '1. Campurkan daging ayam giling, udang cincang, daun bawang, bawang putih, saus tiram, kecap asin, garam, merica, dan gula pasir dalam sebuah wadah.'),
                  Text('2. Aduk rata hingga tercampur.'),
                  Text(
                      '3. Ambil selembar kulit pangsit, letakkan sedikit adonan di tengah.'),
                  Text(
                      '4. Lipat kulit pangsit menjadi segitiga, beri sedikit air pada ujung kulit pangsit untuk merekatkan.'),
                  Text('5. Lakukan hingga adonan habis.'),
                  Text(
                      '6. Panaskan kukusan, kukus dimsum selama 10-15 menit hingga matang.'),
                  Text(
                      '7. Angkat dan sajikan dimsum hangat dengan saus sambal.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
