import 'package:flutter/material.dart';
import 'package:homeland/presentation/pages/search_rentals_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            Container(
              color: Colors.green,
              height: screenHeight * 0.318,
              width: screenWidth,
              child: const Text(
                "logo",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            const Text(
              "continue with ",
            ),
            MaterialButton(
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SearchRentalsPage();
                  },
                ),
              ),
              child: const Text(
                "Facebook",
              ),
            ),
            MaterialButton(
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SearchRentalsPage();
                  },
                ),
              ),
              child: const Text(
                "Google",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
