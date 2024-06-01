import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine/screen/detailscreen/detail_page.dart';

class SparklingWinePage extends StatelessWidget {
  final List<Map<String, String>> whiteWines = [
    {
      'name': 'Champagne',
      'description':
          'Champagne is perhaps the most famous and prestigious sparkling wine in the world. Produced exclusively in the Champagne region of France, Champagne is made using the traditional method and primarily from Chardonnay, Pinot Noir, and Pinot Meunier grapes. Some well-known Champagne houses include Moët & Chandon, Veuve Clicquot, Dom Pérignon, Krug, and Ruinart.',
      'image': 'assets/Champagne.jpg',
    },
    {
      'name': 'Prosecco',
      'description':
          'Prosecco is an Italian sparkling wine primarily produced in the Veneto and Friuli Venezia Giulia regions of Italy. Made primarily from the Glera grape variety, Prosecco is known for its fruity and floral aromas, light body, and refreshing taste. It\'s produced using the Charmat method. Famous Prosecco brands include Mionetto, Santa Margherita, and La Marca.',
      'image': 'assets/Prosecco.jpg',
    },
    {
      'name': 'Cava',
      'description':
          'Cava is a Spanish sparkling wine produced mainly in the Catalonia region of Spain. Made using the traditional method, Cava is typically crafted from indigenous Spanish grape varieties such as Macabeo, Parellada, and Xarel·lo. It offers a wide range of styles, from crisp and refreshing to richer and more complex. Some renowned Cava producers include Freixenet, Codorníu, and Segura Viudas.',
      'image': 'assets/Cava.jpg',
    },
    {
      'name': 'Franciacorta',
      'description':
          'Franciacorta is an Italian sparkling wine produced in the Lombardy region of Italy. Made using the traditional method, Franciacorta is known for its high quality and refined character. It is primarily crafted from Chardonnay, Pinot Noir, and Pinot Blanc grapes. Famous Franciacorta producers include Ca\' del Bosco, Bellavista, and Berlucchi.',
      'image': 'assets/Franciacorta.jpg',
    },
    {
      'name': 'Crémant',
      'description':
          ' Crémant is a term used to refer to French sparkling wines produced outside of the Champagne region using the traditional method. Various regions in France produce Crémant wines, including Alsace, Burgundy, Loire Valley, and Limoux. Each region has its own unique style and grape varieties. Crémant d\'Alsace, Crémant de Bourgogne, Crémant de Loire, and Crémant de Limoux are among the most famous appellations.',
      'image': 'assets/Crémant.jpg',
    },
     {
      'name': 'Sparkling Wine from the United States',
      'description':
          ' The United States produces a wide range of sparkling wines, primarily in California. While not as famous as Champagne or Prosecco, American sparkling wines are gaining recognition for their quality and diversity. Some notable producers include Domaine Chandon, Schramsberg Vineyards, and Gloria Ferrer.',
      'image': 'assets/Sparkling Wine from the United States.jpg',
    },
  ];

  final RxBool showFullDescription = false.obs;

  SparklingWinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sparkling   Wine',
          style: TextStyle(fontFamily: 'Lora'),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/sparklingwine.jpg',
            width: 400,
            height: 400,
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Sparkling wine is a type of wine that contains significant levels of carbon dioxide, making it fizzy.  It\'s  often associated with celebrations and special occasions, but it can also be enjoyed as an everyday wine. The effervescence in sparkling wine is achieved through various winemaking methods, with the most famous being the traditional method, used in Champagne production.',
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
