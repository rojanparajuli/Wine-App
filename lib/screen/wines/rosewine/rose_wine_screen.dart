import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine/screen/detailscreen/detail_page.dart';

class RoseWinePage extends StatelessWidget {
  final List<Map<String, String>> whiteWines = [
    {
      'name': 'Provence Rosé',
      'description':
          'Hailing from the Provence region in southeastern France, Provence rosé wines are known for their pale salmon color, delicate aromas, and crisp, refreshing flavors. Grenache, Cinsault, Syrah, and Mourvèdre are commonly used grape varieties in Provence rosé production.',
      'image': 'assets/Provence Rosé.jpg',
    },
    {
      'name': 'White Zinfandel',
      'description':
          'White Zinfandel is a popular style of rosé wine originating from California, made from the Zinfandel grape. It is typically off-dry to sweet, with flavors of strawberries and raspberries. White Zinfandel played a significant role in popularizing rosé wine in the United States.',
      'image': 'assets/whitewine.jpg',
    },
    {
      'name': 'Tavel Rosé',
      'description':
          'Tavel is an appellation in the Rhône Valley of France known for producing deeply colored, full-bodied rosé wines. These wines often exhibit flavors of ripe red fruits, floral notes, and a rich, rounded mouthfeel. Grenache is the dominant grape variety in Tavel rosé.',
      'image': 'assets/Tavel Rosé.jpg',
    },
    {
      'name': 'Côtes de Provence Rosé',
      'description':
          'Another renowned appellation within Provence, Côtes de Provence produces a wide range of rosé wines, from light and delicate to fuller-bodied styles. These wines often feature a pale pink hue and flavors of citrus, red berries, and herbs.',
      'image': 'assets/Côtes de Provence Rosé.jpg',
    },
    {
      'name': 'Rosé Champagne',
      'description':
          ' Champagne producers also craft rosé Champagne by blending still red wine with Champagne base wine or by allowing a short maceration period for the Pinot Noir or Pinot Meunier grapes used in the production process. Rosé Champagne offers delicate red fruit flavors and lively acidity.',
      'image': 'assets/Rosé Champagne.jpg',
    },
  ];

  final RxBool showFullDescription = false.obs;

  RoseWinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rosé  Wine',
          style: TextStyle(fontFamily: 'Lora'),
        ),
      ),
      body: SingleChildScrollView(
        child: Obx(()=>
           Column(
            children: [
              Image.asset(
                'assets/rosewine.jpg',
                width: 400,
                height: 400,
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Rosé wine is a type of wine that falls between red and white wine, both in terms of color and flavor profile. It\'s made from red grape varieties but is produced using a method that allows for only brief contact between the grape skins and the juice, resulting in its characteristic pink color. Rosé wines can vary in shade from pale salmon to deep rose, and they are known for their refreshing and vibrant flavors.',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
               GestureDetector(
                    onTap: () {
                      showFullDescription.toggle();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        showFullDescription.value ? 'Read Less' : 'Read More',
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
               
              if (showFullDescription.value)
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'White wine is a type of wine that is produced by fermenting grapes without the skins, unlike red wine which is fermented with the skins. The color of white wine can range from pale yellow to golden amber, depending on factors such as the type of grape, winemaking techniques, and aging process. White wines are generally lighter in body compared to red wines and often have higher acidity levels, providing a crisp and refreshing taste. Some of the famous white wines are Chardonnay, Sauvignon Blanc, Riesling, Pinot Grigio, and Moscato.',
                    style: TextStyle(fontSize: 16.0),
                  ),
          
                ),
              SizedBox(
                height: 750,
                child: GridView.builder(
                  padding: const EdgeInsets.all(16.0),
                  physics: const NeverScrollableScrollPhysics(),
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
        ),
      ),
    );
  }
}
