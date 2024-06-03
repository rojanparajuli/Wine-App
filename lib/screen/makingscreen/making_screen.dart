import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine/screen/detailscreen/detail_page.dart';

class WineMaking extends StatelessWidget {
  final List<Map<String, String>> whiteWines = [
    // {
    //   'name': 'Champagne',
    //   'description':
    //       'Champagne is perhaps the most famous and prestigious sparkling wine in the world. Produced exclusively in the Champagne region of France, Champagne is made using the traditional method and primarily from Chardonnay, Pinot Noir, and Pinot Meunier grapes. Some well-known Champagne houses include Moët & Chandon, Veuve Clicquot, Dom Pérignon, Krug, and Ruinart.',
    //   'image': 'assets/Champagne.jpg',
    // },
    // {
    //   'name': 'Prosecco',
    //   'description':
    //       'Prosecco is an Italian sparkling wine primarily produced in the Veneto and Friuli Venezia Giulia regions of Italy. Made primarily from the Glera grape variety, Prosecco is known for its fruity and floral aromas, light body, and refreshing taste. It\'s produced using the Charmat method. Famous Prosecco brands include Mionetto, Santa Margherita, and La Marca.',
    //   'image': 'assets/Prosecco.jpg',
    // },
    // {
    //   'name': 'Cava',
    //   'description':
    //       'Cava is a Spanish sparkling wine produced mainly in the Catalonia region of Spain. Made using the traditional method, Cava is typically crafted from indigenous Spanish grape varieties such as Macabeo, Parellada, and Xarel·lo. It offers a wide range of styles, from crisp and refreshing to richer and more complex. Some renowned Cava producers include Freixenet, Codorníu, and Segura Viudas.',
    //   'image': 'assets/Cava.jpg',
    // },
    // {
    //   'name': 'Franciacorta',
    //   'description':
    //       'Franciacorta is an Italian sparkling wine produced in the Lombardy region of Italy. Made using the traditional method, Franciacorta is known for its high quality and refined character. It is primarily crafted from Chardonnay, Pinot Noir, and Pinot Blanc grapes. Famous Franciacorta producers include Ca\' del Bosco, Bellavista, and Berlucchi.',
    //   'image': 'assets/Franciacorta.jpg',
    // },
    // {
    //   'name': 'Crémant',
    //   'description':
    //       ' Crémant is a term used to refer to French sparkling wines produced outside of the Champagne region using the traditional method. Various regions in France produce Crémant wines, including Alsace, Burgundy, Loire Valley, and Limoux. Each region has its own unique style and grape varieties. Crémant d\'Alsace, Crémant de Bourgogne, Crémant de Loire, and Crémant de Limoux are among the most famous appellations.',
    //   'image': 'assets/Crémant.jpg',
    // },
    //  {
    //   'name': 'Sparkling Wine from the United States',
    //   'description':
    //       ' The United States produces a wide range of sparkling wines, primarily in California. While not as famous as Champagne or Prosecco, American sparkling wines are gaining recognition for their quality and diversity. Some notable producers include Domaine Chandon, Schramsberg Vineyards, and Gloria Ferrer.',
    //   'image': 'assets/Sparkling Wine from the United States.jpg',
    // },
  ];

  final RxBool showFullDescription = false.obs;

  WineMaking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Making',
          style: TextStyle(fontFamily: 'Lora'),
        ),
      ),
      body: SingleChildScrollView(
        child: Obx(()=>
         Column(
            children: [
              Image.asset(
                'assets/WInemaking.jpg',
                width: 400,
                height: 400,
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'The process of making wine, known as vinification or winemaking, involves several key steps. First, grapes are harvested from the vines at their peak ripeness, which is crucial for the quality of the wine. The harvested grapes are then crushed to release their juice. For white wine, the grapes are pressed immediately to separate the juice from the skins, while for red wine, the skins are left with the juice during fermentation to impart color and tannins. The grape juice, now called must, undergoes fermentation, where yeast converts the sugars in the juice into alcohol and carbon dioxide. This can take place in stainless steel tanks, wooden barrels, or other containers and can last from a few days to several weeks. After fermentation, the wine is clarified to remove solid particles like dead yeast cells, grape skins, and seeds, through filtration, racking, or fining. The clarified wine is then aged in tanks, barrels, or bottles to develop its flavors, with the aging process varying significantly depending on the type of wine and desired characteristics. Once the wine has reached the desired maturity, it is bottled and sealed, with some wines continuing to age in the bottle. Finally, the bottled wine is labeled, packaged, and distributed to retailers, restaurants, and consumers. Each of these steps can vary greatly depending on the type of wine being produced and the winemaker\'s techniques and preferences.',
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
                    'Harvesting: The timing of the harvest is critical and can affect the sugar, acidity, and flavor profiles of the grapes. Winemakers often use a combination of visual inspection, taste, and scientific testing to determine the perfect time to harvest. Manual harvesting allows for more selective picking, which can be important for high-quality wines, whereas mechanical harvesting is faster and more efficient for larger vineyards.Crushing and Pressing: After harvesting, the grapes are sorted to remove any damaged or unripe fruit. Crushing was traditionally done by foot but is now typically performed by machines. The method of pressing and the degree of pressure applied can influence the amount of tannin extracted, especially in red wines.Fermentation: This stage involves the conversion of sugars into alcohol and carbon dioxide by yeast. For red wines, fermentation usually occurs in contact with grape skins to extract color, tannins, and flavors. For white wines, the skins are removed before fermentation to produce a lighter, crisper wine. Fermentation temperatures and times can vary and are carefully controlled to influence the final wine style. Some winemakers use natural or wild yeasts, while others add cultured yeasts to ensure a consistent fermentation process.Clarification: Post-fermentation, the wine is cloudy due to dead yeast cells, grape skins, seeds, and other solids. Clarification methods like racking, filtration, and fining help remove these solids. Racking involves transferring the wine from one container to another, leaving the sediment behind. Filtration can range from coarse to fine, affecting the wine’s texture. Fining agents, such as egg whites, bentonite clay, or isinglass, are added to bind unwanted particles, which are then removed.Aging and Maturation: The aging process allows the wine to develop and integrate its flavors. Aging can take place in various types of containers, each imparting different characteristics. Oak barrels, for instance, can add flavors of vanilla, spice, and toast, as well as soften the wine’s texture. Stainless steel tanks are often used for wines that should retain fresh, fruity characteristics. The duration of aging can vary widely depending on the wine style; some wines are intended for immediate consumption, while others benefit from years of maturation.Bottling: Before bottling, many wines undergo a final filtration to ensure clarity and stability. The bottling process must be done carefully to avoid contamination and oxidation. Some wines are bottled with a small amount of sulfur dioxide to preserve freshness and prevent spoilage.Packaging and Distribution: After bottling, wines are labeled with essential information, such as the producer, vintage, varietal, and region. They are then packaged for distribution. Proper storage and handling during distribution are crucial to maintain the wine’s quality until it reaches consumers.',
                    style: TextStyle(fontSize: 16.0),
                  ),
          
                ),
              // SizedBox(
              //   height: 750,
              //   child: GridView.builder(
              //     padding: const EdgeInsets.all(16.0),
              //     physics: const NeverScrollableScrollPhysics(),
              //     itemCount: whiteWines.length,
              //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //       crossAxisSpacing: 16.0,
              //       mainAxisSpacing: 16.0,
              //       childAspectRatio: 0.75,
              //     ),
              //     itemBuilder: (context, index) {
              //       final wine = whiteWines[index];
              //       return GestureDetector(
              //         onTap: () {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) => WineDetailPage(wine: wine),
              //             ),
              //           );
              //         },
              //         child: Hero(
              //           tag: wine['name']!,
              //           child: Card(
              //             elevation: 4.0,
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(16.0),
              //             ),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.stretch,
              //               children: [
              //                 Expanded(
              //                   child: ClipRRect(
              //                     borderRadius: const BorderRadius.vertical(
              //                       top: Radius.circular(16.0),
              //                     ),
              //                     child: Image.asset(
              //                       wine['image']!,
              //                       fit: BoxFit.cover,
              //                     ),
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsets.all(8.0),
              //                   child: Text(
              //                     wine['name']!,
              //                     style: const TextStyle(
              //                       fontSize: 18.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
