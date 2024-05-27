import 'package:flutter/material.dart';
import '../detail_resep/ayam_geprek.dart';
import '../detail_resep/chicken_katsu.dart';
import '../detail_resep/rawon.dart';
import '../detail_resep/sayur_asem.dart';

class MenuUtamaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Resep Menu Utama'),
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
          itemCount: menuUtamaList.length,
          itemBuilder: (context, index) {
            final menu = menuUtamaList[index];
            return GestureDetector(
              onTap: () {
                if (menu.title == 'Chicken Katsu') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChickenKatsuPage()),
                  );
                }
                if (menu.title == 'Sayur Asem') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SayurAsemPage()),
                  );
                }
                if (menu.title == 'Rawon') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RawonPage()),
                  );
                }
                if (menu.title == 'Ayam Geprek') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AyamGeprekPage()),
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
                          menu.image,
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
                                  menu.calories,
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
                              menu.title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              menu.description,
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

class MenuUtama {
  final String title;
  final String description;
  final String image;
  final String time;
  final String calories;

  MenuUtama({
    required this.title,
    required this.description,
    required this.image,
    required this.time,
    required this.calories,
  });
}

final List<MenuUtama> menuUtamaList = [
  MenuUtama(
    title: 'Chicken Katsu',
    description:
        'Chicken katsu (atau chicken cutlet) adalah hidangan Jepang yang terbuat dari ayam goreng dengan tepung roti panko.',
    image: 'images/chicken_katsu.png',
    time: '90 menit',
    calories: '500 cal',
  ),
  MenuUtama(
    title: 'Sayur Asem',
    description:
        'Sayur asem adalah sup sayuran tradisional Indonesia yang dikenal karena rasanya yang menyegarkan dan asam.',
    image: 'images/sayur_asem.png',
    time: '30 menit',
    calories: '250 cal',
  ),
  MenuUtama(
    title: 'Rawon',
    description:
        'Rawon adalah masakan khas Indonesia yang berasal dari Ponorogo, Jawa Timur. Ini adalah sup daging berkuah hitam dengan campuran bumbu khas.',
    image: 'images/rawon.png',
    time: '40 menit',
    calories: '300 cal',
  ),
  MenuUtama(
    title: 'Ayam Geprek',
    description:
        'Ayam geprek adalah makanan ayam goreng tepung khas Indonesia yang diulek atau dilumatkan bersama sambal bajak.',
    image: 'images/ayam_geprek.png',
    time: '50 menit',
    calories: '400 cal',
  ),
];
