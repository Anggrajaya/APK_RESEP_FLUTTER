import 'package:flutter/material.dart';
import '../detail_resep/pisang_nugget.dart';
import '../detail_resep/gyoza.dart';
import '../detail_resep/donat_kentang.dart';
import '../detail_resep/cilok.dart';

class SnackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Resep Snack'),
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
          itemCount: snackList.length,
          itemBuilder: (context, index) {
            final snack = snackList[index];
            return GestureDetector(
              onTap: () {
                if (snack.title == 'Pisang Nugget') {
                  // Navigasi ke halaman Pisang Nugget
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PisangNuggetPage()),
                  );
                } else if (snack.title == 'Gyoza') {
                  // Navigasi ke halaman Gyoza
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GyozaPage()),
                  );
                } else if (snack.title == 'Donat Kentang') {
                  // Navigasi ke halaman Donat Kentang
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DonatKentangPage()),
                  );
                } else if (snack.title == 'Cilok') {
                  // Navigasi ke halaman Cilok
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CilokPage()),
                  );
                }
              },
              child: Card(
                color: Color.fromARGB(
                  255,
                  255,
                  255,
                  255,
                ),
                // Mengubah warna card menjadi putih
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
                          snack.image,
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
                                  snack.calories,
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
                              snack.title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              snack.description,
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

class Snack {
  final String title;
  final String description;
  final String image;
  final String time;
  final String calories;

  Snack({
    required this.title,
    required this.description,
    required this.image,
    required this.time,
    required this.calories,
  });
}

final List<Snack> snackList = [
  Snack(
    title: 'Pisang Nugget',
    description:
        'Makanan ringan yang berasal dari olahan pisang yang divariasikan dengan berbagai jenis topping yang disukai.',
    image: 'images/pisang_nuget.png',
    time: '20 menit',
    calories: '150 cal',
  ),
  Snack(
    title: 'Gyoza',
    description:
        'Kue Jepang yang terdiri dari dumpling kecil yang diisi dengan daging cincang dan sayuran, mirip dengan potsticker Tiongkok.',
    image: 'images/gyoza.png',
    time: '30 menit',
    calories: '300 cal',
  ),
  Snack(
    title: 'Donat Kentang',
    description:
        'Donat kentang, kadang-kadang disebut Spudnut, adalah donat, biasanya manis, yang dibuat dengan kentang tumbuk atau tepung kentang bukan dari tepung terigu.',
    image: 'images/donat_kentang.png',
    time: '25 menit',
    calories: '200 cal',
  ),
  Snack(
    title: 'Cilok',
    description:
        'Singkatan dari ‘aci dicolok’. Ini adalah makanan tradisional Indonesia yang terbuat dari adonan tepung tapioka yang digiling halus dan dibentuk menjadi bola-bola kecil.',
    image: 'images/cilok.png',
    time: '15 menit',
    calories: '180 cal',
  ),
];
