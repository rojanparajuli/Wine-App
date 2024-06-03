import 'package:get/get.dart';
import 'package:wine/main.dart';

class WineController extends GetxController {
  final List<Wine> wines = [
    Wine(name: "White Wine", imageUrl: "assets/whitewine.jpg"),
    Wine(name: "Red Wine", imageUrl: "assets/redwine.jpg"),
    Wine(name: "Rosé Wine", imageUrl: "assets/rosewine.jpg"),
    Wine(name: "Sparkling Wine", imageUrl: "assets/sparklingwine.jpg"),
    Wine(name: "Glasses", imageUrl: "assets/Glasses.jpg"),
     Wine(name: "Makings", imageUrl: "assets/WInemaking.jpg"),
  ];
}
