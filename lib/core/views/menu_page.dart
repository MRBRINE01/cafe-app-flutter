import 'package:cafe_app_flutter/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  
  final Map<String, int> itemQuantities = {};

  // Menu data as JSON string
  final String menuDataJson = '''
  {
    "categories": [
      {
        "name": "Beverages",
        "items": [
          {
            "id": "coffee_latte",
            "name": "Coffee Latte",
            "description": "Smooth espresso with steamed milk and a light layer of foam—the perfect balance of rich coffee and creamy texture.",
            "price": 120,
            "image": "assets/images/chocolate.jpg",
            "isVeg": true,
            "isBestSeller": true
          },
          {
            "id": "cappuccino",
            "name": "Cappuccino",
            "description": "Equal parts espresso, steamed milk, and milk foam—a classic Italian coffee with a perfect balance of bold and creamy.",
            "price": 130,
            "image": "assets/images/chocolate.jpg",
            "isVeg": true,
            "isBestSeller": false
          },
          {
            "id": "chocolate_shake",
            "name": "Chocolate Shake",
            "description": "A rich, creamy chocolate shake blended to perfection—silky smooth, indulgently thick, and bursting with deep cocoa flavor.",
            "price": 150,
            "image": "assets/images/chocolate.jpg",
            "isVeg": true,
            "isBestSeller": true
          }
        ]
      },
      {
        "name": "Food",
        "items": [
          {
            "id": "chocolate_cake",
            "name": "Chocolate Cake",
            "description": "Decadent chocolate cake with layers of rich ganache—moist, fudgy, and intensely chocolatey for the ultimate dessert experience.",
            "price": 180,
            "image": "assets/images/chocolate.jpg",
            "isVeg": true,
            "isBestSeller": true
          },
          {
            "id": "chicken_sandwich",
            "name": "Chicken Sandwich",
            "description": "Tender grilled chicken with fresh veggies and special sauce on toasted bread—savory, satisfying, and packed with flavor.",
            "price": 160,
            "image": "assets/images/chocolate.jpg",
            "isVeg": false,
            "isBestSeller": false
          },
          {
            "id": "veg_wrap",
            "name": "Vegetable Wrap",
            "description": "Fresh seasonal vegetables with hummus in a whole grain wrap—light, nutritious, and bursting with garden-fresh flavors.",
            "price": 140,
            "image": "assets/images/chocolate.jpg",
            "isVeg": true,
            "isBestSeller": false
          }
        ]
      }
    ],
    "topPicks": [
      {
        "id": "coffee_latte",
        "image": "assets/images/chocolate.jpg"
      },
      {
        "id": "chocolate_cake",
        "image": "assets/images/chocolate.jpg"
      },
      {
        "id": "chocolate_shake",
        "image": "assets/images/chocolate.jpg"
      },
      {
        "id": "chicken_sandwich",
        "image": "assets/images/chocolate.jpg"
      },
      {
        "id": "veg_wrap",
        "image": "assets/images/chocolate.jpg"
      }
    ]
  }
  ''';

  late Map<String, dynamic> menuData;

  @override
  void initState() {
    super.initState();
    menuData = json.decode(menuDataJson);
  }

  int getQuantity(String itemName) {
    return itemQuantities[itemName] ?? 0;
  }

  void incrementQuantity(String itemName) {
    setState(() {
      itemQuantities[itemName] = getQuantity(itemName) + 1;
    });
  }

  void decrementQuantity(String itemName) {
    setState(() {
      if (getQuantity(itemName) > 0) {
        itemQuantities[itemName] = getQuantity(itemName) - 1;
      }
    });
  }

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
                      itemCount: menuData['categories'].length,
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
                                    menuData['categories'][index]['name'],
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
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: menuData['categories'][index]['items'].length,
                              itemBuilder: (context, itemIndex) {
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
                                                      menuData['categories'][index]['items'][itemIndex]['name'],
                                                      style: Constants
                                                          .menuTextStyle,
                                                    ),
                                                    SizedBox(width: 8),
                                                    ImageIcon(
                                                      AssetImage(
                                                         "assets/images/veg.png" ,
                                                      ),
                                                      size: 16,
                                                      color: menuData['categories'][index]['items'][itemIndex]['isVeg'] ? Colors.green : Colors.red[700],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 2),
                                                Text(
                                                  menuData['categories'][index]['items'][itemIndex]['description'],
                                                  style: Constants
                                                      .menuSubTextStyle,
                                                  softWrap: true,
                                                  maxLines: null,
                                                  overflow:
                                                      TextOverflow.visible,
                                                ),
                                                SizedBox(height: 2),
                                                Text("₹ ${menuData['categories'][index]['items'][itemIndex]['price']}",
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
                                                menuData['categories'][index]['items'][itemIndex]['image'],
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
                                                    GestureDetector(
                                                      onTap: () =>
                                                          decrementQuantity(
                                                              menuData['categories'][index]['items'][itemIndex]['name']),
                                                      child: Icon(Icons.remove,
                                                          color: Constants
                                                              .selectedColor),
                                                    ),
                                                    Text(
                                                        "${getQuantity(menuData['categories'][index]['items'][itemIndex]['name'])}",
                                                        style: Constants
                                                            .menuSubTextStyle),
                                                    GestureDetector(
                                                      onTap: () =>
                                                          incrementQuantity(
                                                              menuData['categories'][index]['items'][itemIndex]['name']),
                                                      child: Icon(
                                                        Icons.add,
                                                        color: Constants
                                                            .selectedColor,
                                                      ),
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
        itemCount: menuData['topPicks'].length,
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
              child: Image.asset(
                menuData['topPicks'][index]['image'],
                height: 120,
                width: 120,
              ),
            ),
          );
        },
      ),
    );
  }
}
