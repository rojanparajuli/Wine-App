import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine/screen/detailscreen/detail_page.dart';

class WhiteWinePage extends StatelessWidget {
  final List<Map<String, String>> whiteWines = [
    {
      'name': 'Chardonnay',
      'description':
          'Chardonnay is one of the most popular white wine grapes, known for its versatility and ability to showcase the influence of terroir and winemaking techniques.',
      'image': 'assets/Chardonnay.png',
    },
    {
      'name': 'Sauvignon Blanc',
      'description':
          'Sauvignon Blanc is celebrated for its crisp acidity and vibrant flavors of citrus, green apple, and grass.',
      'image': 'assets/SauvignonBlanc.jpg',
    },
    {
      'name': 'Riesling',
      'description':
          'Riesling is known for its aromatic profile, which can include notes of peach, apricot, honey, and petrol.',
      'image': 'assets/Riesling.jpg',
    },
    {
      'name': 'Pinot Grigio/Pinot Gris',
      'description':
          'Pinot Grigio/Pinot Gris produces wines with flavors of pear, apple, and citrus, often with a crisp and refreshing acidity.',
      'image': 'assets/Pinot GrigioPinot Gris.jpg',
    },
    {
      'name': 'Moscato',
      'description':
          'Moscato wines are known for their floral and fruity aromas, often sweet and low in alcohol.',
      'image': 'assets/Moscato.jpg',
    },
  ];

  final RxBool showFullDescription = false.obs;

  WhiteWinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'White Wine',
          style: TextStyle(fontFamily: 'Lora'),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/whitewine.jpg',
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'White wine is a type of wine that is produced by fermenting grapes without the skins, unlike red wine which is fermented with the skins. The color of white wine can range from pale yellow to golden amber, depending on factors such as the type of grape, winemaking techniques, and aging process. White wines are generally lighter in body compared to red wines and often have higher acidity levels, providing a crisp and refreshing taste. Some of the famous white wines are given below:',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          // Obx(() => GestureDetector(
          //       onTap: () {
          //         showFullDescription.toggle();
          //       },
          //       child: Padding(
          //         padding: const EdgeInsets.symmetric(horizontal: 16.0),
          //         child: Text(
          //           showFullDescription.value ? 'Read Less' : 'Read More',
          //           style: const TextStyle(
          //             fontSize: 16.0,
          //             color: Colors.blue,
          //             decoration: TextDecoration.underline,
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // if (showFullDescription.value)
          //   const Padding(
          //     padding: EdgeInsets.all(16.0),
          //     child: Text(
          //       'White wine is a type of wine that is produced by fermenting grapes without the skins, unlike red wine which is fermented with the skins. The color of white wine can range from pale yellow to golden amber, depending on factors such as the type of grape, winemaking techniques, and aging process. White wines are generally lighter in body compared to red wines and often have higher acidity levels, providing a crisp and refreshing taste. Some of the famous white wines are Chardonnay, Sauvignon Blanc, Riesling, Pinot Grigio, and Moscato.',
          //       style: TextStyle(fontSize: 16.0),
          //     ),
              
          //   ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: whiteWines.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                final wine = whiteWines[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WineDetailPage(wine: wine),
                      ),
                    );
                  },
                  child: Hero(
                    tag: wine['name']!,
                    child: Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(16.0),
                              ),
                              child: Image.asset(
                                wine['image']!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              wine['name']!,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
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
          
        ],
      ),
    );
  }
}
