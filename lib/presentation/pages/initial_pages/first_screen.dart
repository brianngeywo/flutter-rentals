import 'package:flutter/material.dart';
import 'package:homeland/presentation/pages/initial_pages/about_us.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey,
            ),
            const Text(
              "Find a Rental near you",
            ),
            MaterialButton(
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const AboutUs();
                  },
                ),
              ),
              child: const Text(
                "Next",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
