
import 'package:flutter/material.dart';

class WineDetailPage extends StatelessWidget {
  final Map<String, String> wine;

  const WineDetailPage({super.key, required this.wine});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(wine['name']!,style: const TextStyle(fontFamily: 'Lora'),),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: wine['name']!,
              child: Image.asset(
                wine['image']!,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              wine['description']!,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
