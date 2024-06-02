import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine/screen/detailscreen/detail_page.dart';

class RedWinePage extends StatelessWidget {
  final List<Map<String, String>> whiteWines = [
    {
      'name': 'Cabernet Sauvignon',
      'description':
          'Known for its bold flavors of blackcurrant, plum, and cedar, Cabernet Sauvignon produces full-bodied wines with firm tannins. It is widely planted in regions such as Bordeaux (France), California (USA), and Australia.',
      'image': 'assets/Cabernet Sauvignon.jpg',
    },
    {
      'name': 'Merlot',
      'description':
          'Merlot wines are characterized by their soft tannins, ripe fruit flavors of plum and cherry, and hints of herbs and spices. It is commonly grown in Bordeaux (France), California (USA), and Italy.',
      'image': 'assets/Merlot.jpg',
    },
    {
      'name': 'Pinot Noir',
      'description':
          'Pinot Noir produces elegant and aromatic wines with flavors of red berries, cherry, and earthy undertones. It is famously grown in regions such as Burgundy (France), Oregon (USA), and New Zealand.',
      'image': 'assets/Pinot Noir.jpg',
    },
    {
      'name': 'Syrah/Shiraz',
      'description':
          'Syrah/Shiraz wines are known for their bold flavors of blackberry, pepper, and smoke, with firm tannins and a full-bodied texture. It is grown in regions such as the Rhône Valley (France), Australia, and California (USA).',
      'image': 'assets/SyrahShiraz.jpg',
    },
    {
      'name': 'Zinfandel',
      'description':
          ' Zinfandel produces robust and fruit-forward wines with flavors of blackberry, raspberry, and spice. It is primarily grown in California (USA), particularly in regions such as Napa Valley and Sonoma County.',
      'image': 'assets/Zinfandel.jpg',
    },
  ];

  final RxBool showFullDescription = false.obs;

  RedWinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Red Wine',
          style: TextStyle(fontFamily: 'Lora'),
        ),
      ),
      body: SingleChildScrollView(
        child: Obx(()=>
           Column(
            children: [
              Image.asset(
                'assets/redwine.jpg',
                width: 400,
                height: 400,
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Red wine is a type of wine that is made from dark-colored grape varieties. The color of red wine ranges from light red to deep purple, depending on factors such as grape variety, fermentation process, and aging. Red wines are typically richer and more complex in flavor compared to white wines, often featuring notes of dark fruits, spices, and earthy undertones.',
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
