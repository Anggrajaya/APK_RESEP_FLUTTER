import 'package:flutter/material.dart';

class NasiKuningPage extends StatelessWidget {
  const NasiKuningPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nasi Kuning'),
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
              'images/recommended4.jpg',
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
                    'Nasi Kuning',
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
                  Text('- 2 gelas beras'),
                  Text('- 2 1/2 gelas air'),
                  Text('- 2 lembar daun salam'),
                  Text('- 1 batang serai, memarkan'),
                  Text('- 1 cm lengkuas, memarkan'),
                  Text('- 1 sdt kunyit bubuk'),
                  Text('- 1 sdt garam'),
                  Text('- 1/2 sdt merica'),
                  Text('- 2 sdm santan'),
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
                  Text('1. Cuci beras hingga bersih, tiriskan.'),
                  Text(
                      '2. Rebus air, tambahkan daun salam, serai, lengkuas, kunyit bubuk, garam, dan merica.'),
                  Text(
                      '3. Setelah mendidih, tambahkan beras dan santan. Aduk rata.'),
                  Text('4. Masak hingga air menyusut dan beras matang.'),
                  Text('5. Angkat dan sajikan nasi kuning hangat.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
