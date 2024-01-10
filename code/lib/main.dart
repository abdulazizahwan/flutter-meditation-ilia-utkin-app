import 'package:flutter/material.dart';
import 'package:flutter_meditation_ilia_utkin_app/meditation_detail_page.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MeditationDetailPage(),
    );
  }
}
