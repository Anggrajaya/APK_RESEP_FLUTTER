import 'package:flutter/material.dart';

class DonatKentangPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donat Kentang'),
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
              'images/resep_donat_kentang.png',
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
                    'Donat Kentang',
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
                        '25 menit',
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
                        '12 donat',
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
                  Text('- 200 gram kentang, kukus dan haluskan'),
                  Text('- 100 gram tepung terigu protein sedang'),
                  Text('- 25 gram tepung maizena'),
                  Text('- 25 gram gula pasir'),
                  Text('- 3 gram ragi instan'),
                  Text('- 25 gram susu bubuk'),
                  Text('- 1 butir telur'),
                  Text('- 50 ml air hangat'),
                  Text('- 25 gram mentega, lelehkan'),
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
                  Text(
                      '1. Campurkan semua bahan kecuali mentega dan minyak, aduk hingga rata.'),
                  Text('2. Tambahkan mentega leleh, uleni hingga kalis.'),
                  Text('3. Diamkan adonan selama 45 menit hingga mengembang.'),
                  Text('4. Kempiskan adonan dan bentuk sesuai selera.'),
                  Text('5. Diamkan lagi selama 30 menit.'),
                  Text('6. Panaskan minyak, goreng donat hingga kecokelatan.'),
                  Text('7. Tiriskan dan sajikan.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
