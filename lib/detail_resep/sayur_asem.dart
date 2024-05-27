import 'package:flutter/material.dart';

class SayurAsemPage extends StatelessWidget {
  const SayurAsemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sayur Asem'),
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
              'images/resep_sayur_asem.png',
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
                    'Sayur Asem',
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
                        '150 cal',
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
                  Text('- 200 gram kacang panjang, potong-potong'),
                  Text('- 100 gram jagung manis'),
                  Text('- 100 gram labu siam, potong kotak'),
                  Text('- 100 gram buncis, potong-potong'),
                  Text('- 1 buah tomat, potong-potong'),
                  Text('- 2 lembar daun salam'),
                  Text('- 2 cm lengkuas, memarkan'),
                  Text('- 2 liter air'),
                  Text('- Garam secukupnya'),
                  Text('- Gula secukupnya'),
                  Text('- Asam Jawa secukupnya'),
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
                      '1. Rebus air hingga mendidih, masukkan daun salam dan lengkuas.'),
                  Text(
                      '2. Masukkan kacang panjang, jagung, labu siam, dan buncis. Rebus hingga sayuran setengah matang.'),
                  Text(
                      '3. Tambahkan tomat, garam, gula, dan asam Jawa. Aduk rata.'),
                  Text('4. Masak hingga sayuran matang dan bumbu meresap.'),
                  Text('5. Angkat dan sajikan.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
