import 'package:flutter/material.dart';
import 'package:resep/detail_resep/bubur_ayam.dart';
import '../detail_resep/nasi_goreng.dart';
import '../detail_resep/nasi_kuning.dart';
import '../detail_resep/nasi_pecel.dart';

class SarapanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Resep Sarapan'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: sarapanList.length,
          itemBuilder: (context, index) {
            final sarapan = sarapanList[index];
            return GestureDetector(
              onTap: () {
                if (sarapan.title == 'Nasi Goreng') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NasiGorengPage()),
                  );
                }
                if (sarapan.title == 'Bubur Ayam') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BuburAyamPage()),
                  );
                }
                if (sarapan.title == 'Nasi Kuning') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NasiKuningPage()),
                  );
                }
                if (sarapan.title == 'Nasi Pecel') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NasiPecelPage()),
                  );
                }
              },
              child: Card(
                color: Color.fromARGB(
                    255, 255, 255, 255), // Mengubah warna card menjadi putih
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 4,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          sarapan.image,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  sarapan.calories,
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '100 gram',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(
                              sarapan.title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              sarapan.description,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Daftar Resep Sarapan'),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: sarapanList.length,
        itemBuilder: (context, index) {
          final sarapan = sarapanList[index];
          return Card(
            color: Color.fromARGB(
                255, 255, 255, 255), // Mengubah warna card menjadi putih
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      sarapan.image,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              sarapan.calories,
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '100 gram',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          sarapan.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          sarapan.description,
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}

class Sarapan {
  final String title;
  final String description;
  final String image;
  final String time;
  final String calories;

  Sarapan({
    required this.title,
    required this.description,
    required this.image,
    required this.time,
    required this.calories,
  });
}

final List<Sarapan> sarapanList = [
  Sarapan(
    title: 'Nasi Goreng',
    description:
        'Nasi goreng adalah salah satu hidangan yang paling digemari di Indonesia.',
    image: 'images/nasi_goreng.png',
    time: '30 menit',
    calories: '168 cal',
  ),
  Sarapan(
    title: 'Bubur Ayam',
    description:
        'Bubur ayam adalah makanan Indonesia, bubur nasi kental dengan taburan ayam suwir dan berbagai bumbu gurih.',
    image: 'images/bubur_ayam.png',
    time: '20 menit',
    calories: '150 cal',
  ),
  Sarapan(
    title: 'Nasi Kuning',
    description:
        'Nasi kuning adalah makanan khas Indonesia, makanan ini terbuat dari beras yang dimasak bersama dengan kunyit serta santan dan rempah-rempah.',
    image: 'images/nasi_kuning.png',
    time: '40 menit',
    calories: '200 cal',
  ),
  Sarapan(
    title: 'Nasi Pecel',
    description:
        'Nasi pecel adalah nasi dengan sayuran yang disiram dengan saus kacang disajikan dengan pecel.',
    image: 'images/nasi_pecel.png',
    time: '25 menit',
    calories: '180 cal',
  ),
];
