import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine/screen/home/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class Wine {
  final String name;
  final String imageUrl;

  Wine({required this.name, required this.imageUrl});
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wine App',
      home: WinePage(),
    );
  }
}

