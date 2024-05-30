import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:resep/detail_resep/ayam_geprek.dart';
import 'package:resep/detail_resep/bubur_ayam.dart';
import 'package:resep/detail_resep/chicken_katsu.dart';
import 'package:resep/detail_resep/choco_lava.dart';
import 'package:resep/detail_resep/cilok.dart';
import 'package:resep/detail_resep/daifuku_mochi.dart';
import 'package:resep/detail_resep/donat_kentang.dart';
import 'package:resep/detail_resep/es_buah.dart';
import 'package:resep/detail_resep/gyoza.dart';
import 'package:resep/detail_resep/nasi_goreng.dart';
import 'package:resep/detail_resep/nasi_pecel.dart';
import 'package:resep/detail_resep/pisang_nugget.dart';
import 'package:resep/detail_resep/puding_caramel.dart';
import 'package:resep/detail_resep/rawon.dart';
import 'package:resep/detail_resep/sayur_asem.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../category/sarapan.dart';
import '../category/utama.dart';
import '../category/dessert.dart';
import '../category/snack.dart';
import '../detail_resep/ayam_goreng.dart';
import '../detail_resep/sup_ikan.dart';
import '../detail_resep/dimsum.dart';
import '../detail_resep/nasi_kuning.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int activeIndex = 0;

  final List<String> foodImages = [
    'images/resep_nasi_goreng.png',
    'images/makanan_slide2.jpg',
    'images/makanan_slide3.jpg'
  ];

  final List<String> foodNames = ['Nasi Goreng', 'Ayam Betutu', 'Gado-Gado'];
  final List<String> cookingTimes = ['30 menit', '45 menit', '25 menit'];

  final List<Map<String, String>> recommendedFoods = [
    {
      'image': 'images/recommended1.jpg',
      'title': 'Ayam Goreng',
    },
    {
      'image': 'images/recommended2.jpg',
      'title': 'Sup Ikan',
    },
    {
      'image': 'images/recommended3.jpg',
      'title': 'Dimsum',
    },
    {
      'image': 'images/recommended4.jpg',
      'title': 'Nasi Kuning',
    },
  ];

  final TextEditingController searchController = TextEditingController();
  List<String> suggestions = [];

  void updateSuggestions(String input) {
    final allCategories = ['Ayam Geprek', 'Ayam Goreng', 'Bubur Ayam', 'Chicken Katsu', 'Choco Lava', 'Cilok', 'Daifuku Mochi', 'Dimsum', 'Donat Kentang', 'Es Buah', 'Gyoza', 'Nasi Goreng', 'Nasi Kuning', 'Nasi Pecel', 'Pisang Nugget', 'Puding Caramel', 'Rawon', 'Sayur Asem', 'Sup Ikan'];
    setState(() {
      suggestions = allCategories
          .where((category) =>
              category.toLowerCase().contains(input.toLowerCase()))
          .toList();
    });
  }

  void navigateToCategory(String category) {
    if (category == 'Ayam Geprek') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AyamGeprekPage()),
      );
    }
    if (category == 'Ayam Goreng') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AyamGorengPage()),
      );
    }
    if (category == 'Bubur Ayam') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BuburAyamPage()),
      );
    }
    if (category == 'Chicken Katsu') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ChickenKatsuPage()),
      );
    }
    if (category == 'Choco Lava') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ChocoLavaCakePage()),
      );
    }
    if (category == 'Cilok') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CilokPage()),
      );
    }
    if (category == 'Daifuku Mochi') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DaifukuMochiPage()),
      );
    }
    if (category == 'Dimsum') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DimsumPage()),
      );
    }
    if (category == 'Donat Kentang') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DonatKentangPage()),
      );
    }
    if (category == 'Es Buah') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const EsBuahPage()),
      );
    }
    if (category == 'Gyoza') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => GyozaPage()),
      );
    }
    if (category == 'Nasi Goreng') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const NasiGorengPage()),
      );
    }
    if (category == 'Nasi Kuning') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const NasiKuningPage()),
      );
    }
    if (category == 'Nasi Pecel') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const NasiPecelPage()),
      );
    }
    if (category == 'Pisang Nugget') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PisangNuggetPage()),
      );
    }
    if (category == 'Puding Caramel') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PudingCaramelPage()),
      );
    }
    if (category == 'Rawon') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const RawonPage()),
      );
    }
    if (category == 'Sayur Asem') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SayurAsemPage()),
      );
    }
    if (category == 'Sup Ikan') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SupIkanPage()),
      );
    }
  }

  void clearSuggestions() {
    setState(() {
      suggestions.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CarouselSlider.builder(
                  itemCount: foodImages.length,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int pageViewIndex) {
                    return Image.asset(
                      foodImages[itemIndex],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 1.0,
                    aspectRatio: 16 / 9,
                    initialPage: 0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodNames[activeIndex],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.timer, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            cookingTimes[activeIndex],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: AnimatedSmoothIndicator(
                      activeIndex: activeIndex,
                      count: foodImages.length,
                      effect: WormEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        activeDotColor: Color.fromRGBO(228, 228, 236, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      TextField(
                        controller: searchController,
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            updateSuggestions(value);
                          } else {
                            clearSuggestions();
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Mau masak apa hari ini?',
                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                        ),
                      ),
                      if (suggestions.isNotEmpty)
                        Positioned(
                          right: 0,
                          child: IconButton(
                            icon: Icon(Icons.close),
                            onPressed: clearSuggestions,
                          ),
                        ),
                    ],
                  ),
                  if (suggestions.isNotEmpty)
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: suggestions.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(suggestions[index]),
                          onTap: () {
                            navigateToCategory(suggestions[index]);
                            clearSuggestions();
                          },
                        );
                      },
                    ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryButton(
                    label: 'Sarapan',
                    icon: Icons.free_breakfast,
                  ),
                  CategoryButton(
                    label: 'Utama',
                    icon: Icons.restaurant,
                  ),
                  CategoryButton(
                    label: 'Dessert',
                    icon: Icons.icecream,
                  ),
                  CategoryButton(
                    label: 'Snack',
                    icon: Icons.fastfood,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Menu Rekomendasi',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemCount: recommendedFoods.length,
                itemBuilder: (BuildContext context, int index) {
                  return RecommendedFoodCard(
                    image: recommendedFoods[index]['image']!,
                    title: recommendedFoods[index]['title']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String label;
  final IconData icon;

  const CategoryButton({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (label == 'Sarapan') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SarapanPage()),
          );
        }
        if (label == 'Utama') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MenuUtamaPage()),
          );
        }
        if (label == 'Dessert') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DessertPage()),
          );
        }
        if (label == 'Snack') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SnackPage()),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(81, 87, 238, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class RecommendedFoodCard extends StatelessWidget {
  final String image;
  final String title;

  const RecommendedFoodCard({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (title == 'Ayam Goreng') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AyamGorengPage()),
          );
        }
        if (title == 'Sup Ikan') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SupIkanPage()),
          );
        }
        if (title == 'Dimsum') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DimsumPage()),
          );
        }
        if (title == 'Nasi Kuning') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NasiKuningPage()),
          );
        }
      },
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

