import 'package:cafe_app_flutter/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Your Orders",
                style: TextStyle(
                  color: Constants.textColor,
                  fontSize: 40,
                ),
              ),
            ),

            //orders
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                  color: Color.fromRGBO(246, 211, 182, 1),
                  borderRadius: BorderRadius.circular(16), 
                  ),
                  
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: ListView.builder(
                      itemCount: 10,
                      padding: const EdgeInsets.only(bottom: 16.0),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Chocolate Shake",
                                              style: TextStyle(
                                                color: Constants.textColor,
                                                fontSize: 20,
                                              ),
                                            ),
                                            SizedBox(width: 8),
                                          ],
                                        ),
                                        SizedBox(height: 2),
                                        Text(
                                          "₹ 200",
                                          style: TextStyle(
                                            color: Constants.textColor,
                                            fontSize: 15,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Column(
                                    children: [
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
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.remove,
                                                color: Constants.selectedColor),
                                            const Text(
                                              "4",
                                              style: Constants.menuSubTextStyle,
                                            ),
                                            Icon(Icons.add,
                                                color: Constants.selectedColor),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Divider(
                                color:
                                   Constants.textColor.withValues(alpha: 0.3),
                                thickness: 1,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
