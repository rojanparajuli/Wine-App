import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine/screen/detailscreen/detail_page.dart';

class Glass extends StatelessWidget {
  final List<Map<String, String>> whiteWines = [
    {
      'name': 'Red Wine Glasses',
      'description':
          'Characteristics: Larger bowl to allow the wine to breathe and release its full bouquet.Types: Bordeaux (tall with a broad bowl) for full-bodied wines, Burgundy (wider bowl) for more delicate reds.',
      'image': 'assets/redwineglass.jpg',
    },
    {
      'name': 'White Wine Glasses',
      'description':
          'Characteristics: Smaller bowl to preserve the floral aromas and maintain a cooler temperature.Types: Standard white wine glasses with a smaller opening to concentrate aromas.',
      'image': 'assets/Whitewineglass.jpg',
    },
    {
      'name': 'Sparkling Wine Glasses',
      'description':
          'Characteristics: Tall and narrow (flute) to maintain carbonation and showcase the bubbles.Types: Champagne flute for most sparkling wines, tulip-shaped glasses for enhancing aroma.',
      'image': 'assets/Sparkling Wine Glasses.jpg',
    },

  ];

  final RxBool showFullDescription = false.obs;

  Glass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Wine Glasses',
          style: TextStyle(fontFamily: 'Lora'),
        ),
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => Column(
            children: [
              Image.asset(
                'assets/Glasses.jpg',
                width: 400,
                height: 400,
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  ' The proper use of different types of glasses for various beverages is essential for both aesthetic and functional purposes. This practice enhances the guest experience by ensuring that each drink is served in a way that maximizes its flavor, aroma, and visual appeal.',
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
                    'In the realm of hotel management, the choice of glassware plays a pivotal role in enhancing the guest experience by not only complementing the beverages served but also elevating the overall aesthetic appeal of the dining or drinking setting. Glassware, which includes a wide variety of specialized glasses, is selected based on the type of beverage, its serving temperature, and the desired sensory experience. For instance, red wine glasses typically feature larger bowls that allow the wine to breathe and release its complex aromas, while white wine glasses have smaller bowls to preserve their delicate floral notes and cooler temperature. Beer glasses, such as the pilsner and pint glasses, are designed to highlight the unique characteristics of different brews, from the clarity and carbonation of a pilsner to the robust flavors of an ale. Spirit glasses, including the highball, old-fashioned, and snifter, each serve distinct purposes, from enhancing the visual presentation of mixed drinks to concentrating the aromas of fine cognacs and brandies. Additionally, specialty glasses like the hurricane glass for tropical cocktails and the Irish coffee glass for warm beverages add a touch of flair and elegance. The thoughtful selection and use of these glasses not only fulfill practical functions but also contribute to creating memorable and refined experiences for guests, showcasing the establishment\'s attention to detail and dedication to quality service.',
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
