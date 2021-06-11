import 'package:flutter/material.dart';
import 'package:homeland/presentation/views/search_rentals_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            Image.network(
              "https://images.unsplash.com/photo-1460317442991-0ec209397118?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80",
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              top: 200,
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.318,
                    width: screenWidth,
                    child: const Text(
                      "Yetu App",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        decorationStyle: TextDecorationStyle.wavy,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // const Text(
                  //   "continue with ",
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
                  //     "Google",
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
