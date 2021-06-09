import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/presentation/myhomepage.dart';
import 'package:homeland/presentation/pages/full_rental_page.dart';
import 'package:homeland/presentation/pages/search_place_page.dart';
import 'package:homeland/presentation/reusables/rental_main_list_card.dart';

class RentalsResultsListPage extends StatelessWidget {
  const RentalsResultsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        // leading: const Icon(Icons.home),
        title: const Text(
          "Results",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          Center(
            child: MaterialButton(
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MyHomePage();
                  },
                ),
              ),
              child: const Text("GO HOME",
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
      body: ListView(
        children: List.generate(
          3,
          (index) => InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FullRentalPage(),
              ),
            ),
            child: rentalCard(context),
          ),
        ),
      ),
    );
  }
}
