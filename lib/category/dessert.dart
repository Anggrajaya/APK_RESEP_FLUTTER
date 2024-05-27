import 'package:flutter/material.dart';
import '../detail_resep/es_buah.dart';
import '../detail_resep/daifuku_mochi.dart';
import '../detail_resep/choco_lava.dart';
import '../detail_resep/puding_caramel.dart';

class DessertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Resep Dessert'),
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
          itemCount: dessertList.length,
          itemBuilder: (context, index) {
            final dessert = dessertList[index];
            return GestureDetector(
              onTap: () {
                if (dessert.title == 'Es Buah') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EsBuahPage()),
                  );
                }
                if (dessert.title == 'Daifuku Mochi') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DaifukuMochiPage()),
                  );
                }
                if (dessert.title == 'Choco Lava Cake') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChocoLavaCakePage()),
                  );
                }
                if (dessert.title == 'Puding Caramel') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PudingCaramelPage()),
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
                          dessert.image,
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
                                  dessert.calories,
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
                              dessert.title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              dessert.description,
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

class Dessert {
  final String title;
  final String description;
  final String image;
  final String time;
  final String calories;

  Dessert({
    required this.title,
    required this.description,
    required this.image,
    required this.time,
    required this.calories,
  });
}

final List<Dessert> dessertList = [
  Dessert(
    title: 'Es Buah',
    description:
        'sebuah minuman segar yang terbuat dari potongan buah-buahan segar yang dicampur dengan sirup atau susu, dan kemudian disajikan dengan es serut di atasnya.',
    image: 'images/es_buah.png',
    time: '15 menit',
    calories: '150 cal',
  ),
  Dessert(
    title: 'Daifuku Mochi',
    description:
        'Di Jepang, kue tradisional ini populer dan terdiri dari mochi berbentuk bulat yang diisi dengan anko. Karena lebih mengadopsi gaya Barat, Daifuku dengan stroberi sebenarnya bukan daifuku asli.',
    image: 'images/daifuku_mochi.png',
    time: '20 menit',
    calories: '200 cal',
  ),
  Dessert(
    title: 'Choco Lava Cake',
    description:
        'Kue cokelat kecil yang sengaja dipanggang setengah matang sehingga bagian tengahnya masih berbentuk cair.',
    image: 'images/lava_cake.png',
    time: '30 menit',
    calories: '100 cal',
  ),
  Dessert(
    title: 'Puding Caramel',
    description:
        'Sajian manis yang terdiri dari lapisan karamel yang kaya dan lembut di bagian bawahnya, diikuti dengan lapisan puding yang halus dan berperisa di atasnya.',
    image: 'images/puding_caramel.png',
    time: '10 menit',
    calories: '250 cal',
  ),
];
