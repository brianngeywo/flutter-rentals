import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/data/models/rental.dart';
import 'package:homeland/presentation/myhomepage.dart';
import 'package:homeland/presentation/reusables/rental_main_list_card.dart';
import 'package:homeland/presentation/views/add_phone_number.dart';
import 'package:homeland/presentation/views/full_rental_page.dart';
import 'package:homeland/presentation/views/search_place_page.dart';

class RentalsListPage extends StatefulWidget {
  @override
  _RentalsListPageState createState() => _RentalsListPageState();
}

class _RentalsListPageState extends State<RentalsListPage> {
  final Stream<QuerySnapshot> _tentalsStream = FirebaseFirestore.instance.collection('rentals').snapshots();

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
            fontSize: 22,
            // color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            onPressed: () => showSearch(context: context, delegate: SearchPlace()),
            icon: const Icon(Icons.search_sharp),
            iconSize: 25,
            padding: const EdgeInsets.only(right: 14),
          ),
        ],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _tentalsStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading");
          }

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Rental rental = Rental.fromFirestore(document);
              return InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FullRentalPage(
                      rental: rental,
                    ),
                  ),
                ),
                child: rentalCard(context, rental),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
