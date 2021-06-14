import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/data/models/rental.dart';
import 'package:homeland/presentation/myhomepage.dart';
import 'package:homeland/presentation/reusables/rental_suggestions_card.dart';
import 'package:homeland/presentation/views/full_rental_page.dart';

class UserRentalsPage extends StatefulWidget {
  const UserRentalsPage({Key? key}) : super(key: key);

  @override
  _UserRentalsPageState createState() => _UserRentalsPageState();
}

class _UserRentalsPageState extends State<UserRentalsPage> {
  final Stream<QuerySnapshot> _rentalsStream =
      FirebaseFirestore.instance.collection('rentals').where("posted by", isEqualTo: currentUser!.uid).snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: backgroundColor,
        elevation: 0,
        // leading: const Icon(Icons.home),
        title: const Text(
          "HomeLand",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
          child: StreamBuilder<QuerySnapshot>(
        stream: _rentalsStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError || snapshot.data == null) {
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Could not complete request",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            );
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Loading suggestions...",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            );
          }

          return snapshot.data!.docs.isEmpty
              ? const Text("No results available...")
              : ListView(
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
                      child: rentalSuggestionsAndResultsCard(context, rental),
                    );
                  }).toList(),
                );
        },
      )),
    );
  }
}
