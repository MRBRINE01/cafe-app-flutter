import 'package:cafe_app_flutter/core/utils/constants.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Search bar
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Constants.textFieldColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.coffee, color: Constants.textColor),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Constants.textFieldColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Constants.textColor),
                            SizedBox(width: 8),
                            Text('Search',
                                style: TextStyle(color: Constants.textColor)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Top Picks Carousel
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Top Picks',
                        style: TextStyle(
                          color: Constants.textColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'InriaSerif',
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    customCarouselSlider(),
                    const SizedBox(height: 16),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        Constants.textColor.withOpacity(0.3)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              child: Row(
                                children: [
                                  Icon(Icons.filter_list,
                                      size: 16, color: Constants.textColor),
                                  SizedBox(width: 4),
                                  Text('Filters',
                                      style: TextStyle(
                                          color: Constants.textColor)),
                                ],
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        Constants.textColor.withOpacity(0.3)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              child: Row(
                                children: [
                                  Icon(Icons.circle,
                                      size: 16, color: Colors.green),
                                  SizedBox(width: 4),
                                  Text('Veg',
                                      style: TextStyle(
                                          color: Constants.textColor)),
                                ],
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        Constants.textColor.withOpacity(0.3)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              child: Row(
                                children: [
                                  Icon(Icons.circle,
                                      size: 16, color: Colors.red[700]),
                                  SizedBox(width: 4),
                                  Text('Non-Veg',
                                      style: TextStyle(
                                          color: Constants.textColor)),
                                ],
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        Constants.textColor.withOpacity(0.3)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              child: Row(
                                children: [
                                  Icon(Icons.star,
                                      size: 16, color: Colors.yellow[800]),
                                  SizedBox(width: 4),
                                  Text('Best Seller',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Constants.textColor,
                                          fontFamily: 'InriaSerif')),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    SizedBox(height: 2),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Divider(
                              color: Constants.textColor.withValues(alpha: 0.3),
                              thickness: 1,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Beverages",
                                    style: Constants.menuHeadTextStyle,
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Constants.textColor,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 2),
                            Divider(
                              color: Constants.textColor.withValues(alpha: 0.3),
                              thickness: 1,
                            ),
                            SizedBox(height: 8),
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Chocolate Shake",
                                                      style: Constants
                                                          .menuTextStyle,
                                                    ),
                                                    SizedBox(width: 8),
                                                    ImageIcon(
                                                      AssetImage(
                                                        "assets/images/veg.png",
                                                      ),
                                                      size: 16,
                                                      color: Colors.green,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 2),
                                                Text(
                                                  "A rich, creamy chocolate shake blended to perfection—silky smooth, indulgently thick, and bursting with deep cocoa flavor.",
                                                  style: Constants
                                                      .menuSubTextStyle,
                                                  softWrap: true,
                                                  maxLines: null,
                                                  overflow:
                                                      TextOverflow.visible,
                                                ),
                                                SizedBox(height: 2),
                                                Text("₹ 200",
                                                    style: Constants
                                                        .menuTextStyle),
                                                SizedBox(height: 8),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 8),
                                          Column(
                                            children: [
                                              Image.asset(
                                                "assets/images/chocolate.jpg",
                                                height: 80,
                                                width: 80,
                                              ),
                                              Container(
                                                height: 25,
                                                width: 80,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Icon(Icons.remove,
                                                        color: Constants
                                                            .selectedColor),
                                                    const Text("4",
                                                        style: Constants
                                                            .menuSubTextStyle),
                                                    Icon(
                                                      Icons.add,
                                                      color: Constants
                                                          .selectedColor,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        color: Constants.textColor
                                            .withValues(alpha: 0.3),
                                        thickness: 1,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customCarouselSlider() {
    // Instead of using CarouselSlider, use PageView for a custom carousel
    return SizedBox(
      height: 180.0,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.8),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.grey[300], // Placeholder color
              // Replace with your image logic
              // image: DecorationImage(
              //   image: AssetImage("your_image_path"),
              //   fit: BoxFit.cover,
              // ),
            ),
            child: Center(
              child: Text(
                'Item ${index + 1}',
                style: const TextStyle(fontSize: 20.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
