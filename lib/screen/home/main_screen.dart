import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine/controller/wine_types_controller.dart';
import 'package:wine/screen/glasses/glasses_screen.dart';
import 'package:wine/screen/makingscreen/making_screen.dart';
import 'package:wine/screen/wines/rosewine/rose_wine_screen.dart';
import 'package:wine/screen/wines/redwine/red_wine_screen.dart';
import 'package:wine/screen/wines/sparklingwine/sparkling_wine_screen.dart';
import 'package:wine/screen/wines/whitewine/white_wine_screen.dart';

class WinePage extends StatelessWidget {
  final WineController wineController = Get.put(WineController());

  WinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: wineController.wines.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (wineController.wines[index].name == "White Wine") {
                Get.to(() => WhiteWinePage());
              } else if (wineController.wines[index].name == "Red Wine") {
                Get.to(() => RedWinePage());
              } else if (wineController.wines[index].name == "Rosé Wine") {
                Get.to(() => RoseWinePage());
              } else if (wineController.wines[index].name == "Sparkling Wine") {
                Get.to(() => SparklingWinePage());
              }else if (wineController.wines[index].name == "Glasses"){
                Get.to(()=>Glass());
              }else if (wineController.wines[index].name == "Makings"){
                Get.to(()=>WineMaking());
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: 145,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/tilebackground.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        wineController.wines[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        wineController.wines[index].name,
                        style:
                            const TextStyle(fontSize: 20, fontFamily: 'Lora',fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
