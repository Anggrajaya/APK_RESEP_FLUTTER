import 'package:flutter/material.dart';
import 'dart:async';
import '../auth/signin.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Signin()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(81, 87, 238, 1),
      body: Center(
        child: Image.asset(
            'images/lg.png'), // Pastikan gambar lg.png berada di folder images
      ),
    );
  }
}
