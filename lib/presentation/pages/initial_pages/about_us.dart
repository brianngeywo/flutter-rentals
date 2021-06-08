import 'package:flutter/material.dart';
import 'package:homeland/presentation/pages/auth/welcome_page.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

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
            const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey,
            ),
            const Text(
              "We work to link rental owners and agents so you find the right home",
            ),
            MaterialButton(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
