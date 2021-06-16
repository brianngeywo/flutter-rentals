import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:homeland/data/models/rental.dart';
import 'package:homeland/presentation/reusables/rental_suggestions_card.dart';
import 'package:homeland/presentation/views/full_rental_page.dart';

class SearchPlace extends SearchDelegate<Rental?> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = "",
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const BackButton(),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final Stream<QuerySnapshot> _rentalsStream = query.isEmpty
        ? FirebaseFirestore.instance.collection('rentals').snapshots()
        : FirebaseFirestore.instance.collection('rentals').where("tags", arrayContains: query).snapshots();
    return StreamBuilder<QuerySnapshot>(
      stream: _rentalsStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        if (snapshot.data == null) {
          return Text(snapshot.error.toString());
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
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final Stream<QuerySnapshot> _rentalsStream = query.isEmpty
        ? FirebaseFirestore.instance.collection('rentals').snapshots()
        : FirebaseFirestore.instance.collection('rentals').where("tags", arrayContains: query,).snapshots();
        
    return StreamBuilder<QuerySnapshot>(
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
    );
  }
}

