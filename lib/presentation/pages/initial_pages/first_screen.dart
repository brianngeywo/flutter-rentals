import 'package:flutter/material.dart';
import 'package:homeland/presentation/pages/auth/welcome_page.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body:Stack(
          children: [
            Image.asset("assets/images/bg.jpeg",
                fit: BoxFit.cover,
                height: screenHeight,
                width: screenWidth,
                colorBlendMode: BlendMode.darken,
                color: Colors.black26),
            Positioned(
              top: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHeight * 0.318,
                    width: screenWidth,
                    child: const Text(
                      "Yetu App",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        decorationStyle: TextDecorationStyle.wavy,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  //  Text(
                  //   "continue with ".toUpperCase(),
                  //       style: TextStyle(
                  //     fontSize: 32,
                  //     color: backgroundColor,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  //   textAlign: TextAlign.center,
                  // ),
                  // MaterialButton(
                  //   onPressed: () => Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) {
                  //         return const SearchRentalsPage();
                  //       },
                  //     ),
                  //   ),
                  //   child: const Text(
                  //     "Facebook",
                  //   ),
                  // ),
                  const Text(
                    "Find a Rental near you",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: MaterialButton(
                      onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const WelcomePage();
                          },
                        ),
                      ),
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      
    );
  }
}
