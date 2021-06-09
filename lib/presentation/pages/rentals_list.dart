import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/presentation/pages/full_rental_page.dart';
import 'package:homeland/presentation/reusables/rental_main_list_card.dart';

class RentalsListPage extends StatelessWidget {
  const RentalsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        // leading: const Icon(Icons.home),
        title: const Text(
          "HomeLand",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            // color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        // actions: const [
        //   Center(
        //     child: Padding(
        //       padding: EdgeInsets.only(
        //         right: 12.0,
        //       ),
        //       child: Icon(
        //         Icons.notifications_outlined,
        //         size: 32,
        //         color: Colors.black,
        //       ),
        //     ),
        //   ),
        // ],
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
