import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/data/services/auth.dart';
import 'package:homeland/presentation/myhomepage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
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
                  MaterialButton(
                    color: backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    onPressed: () => AuthMethods().handleSignIn(context).then(
                          (value) => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const MyHomePage()),
                          ),
                        ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Continue with Google",
                        style: TextStyle(
                          fontSize: 22,
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
