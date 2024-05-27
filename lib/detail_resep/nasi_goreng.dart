import 'package:flutter/material.dart';

class NasiGorengPage extends StatelessWidget {
  const NasiGorengPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nasi Goreng'),
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
              'images/resep_nasi_goreng.png',
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
                    'Nasi Goreng',
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
                        '168 cal',
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
                  Text('- 2 piring nasi'),
                  Text('- 2 butir telur'),
                  Text('- 2 siung bawang putih'),
                  Text('- 2 sdm kecap manis'),
                  Text('- 1 sdm saus tiram'),
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
                  Text('1. Panaskan minyak, tumis bawang putih hingga harum.'),
                  Text('2. Masukkan telur, orak-arik hingga matang.'),
                  Text(
                      '3. Masukkan nasi, aduk rata dengan telur dan bawang putih.'),
                  Text(
                      '4. Tambahkan kecap manis, saus tiram, dan garam. Aduk rata.'),
                  Text('5. Masak hingga nasi dan bumbu tercampur sempurna.'),
                  Text('6. Angkat dan sajikan selagi hangat.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
