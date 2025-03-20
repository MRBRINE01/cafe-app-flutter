import 'package:flutter/material.dart';
import 'package:cafe_app_flutter/core/utils/constants.dart';
import 'package:cafe_app_flutter/core/views/menu_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Constants.bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.05), 
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/lines.png',
                  width: screenWidth, 
                  height: screenHeight * 0.25, 
                ),
                
                SizedBox(height: screenHeight * 0.02), 
                
                Text(
                  "Your mobile number",
                  style: TextStyle(
                    fontSize: screenWidth * 0.05, 
                    fontFamily: 'InriaSerif',
                    color: Constants.textColor,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
                  child: TextField(
                    style: TextStyle(color: Constants.textColor),
                    decoration: InputDecoration(
                      hintText: " ",
                      filled: true,
                      fillColor: Constants.textFieldColor,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.02, 
                        horizontal: screenWidth * 0.05
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: screenHeight * 0.03),

                Text(
                  "Table number",
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    fontFamily: 'InriaSerif',
                    color: Constants.textColor,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
                  child: TextField(
                    style: TextStyle(color: Constants.textColor),
                    decoration: InputDecoration(
                      hintText: " ",
                      filled: true,
                      fillColor: Constants.textFieldColor,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.02, 
                        horizontal: screenWidth * 0.05
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: screenHeight * 0.05),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MenuPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Constants.buttonColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.05, 
                        vertical: screenHeight * 0.02
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Submit",
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontFamily: 'InriaSerif',
                            color: Constants.textColor,
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.04),
                        Icon(
                          Icons.coffee,
                          color: Constants.textColor,
                          size: screenWidth * 0.06,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: screenHeight * 0.05),

                Image.asset(
                  'assets/images/lines.png',
                  width: screenWidth,
                  height: screenHeight * 0.25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
