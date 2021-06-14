import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/data/models/rental.dart';
import 'package:homeland/presentation/myhomepage.dart';
import 'package:homeland/presentation/reusables/rental_main_list_card.dart';

class RentalsResultsListPage extends StatelessWidget {
  final String searchTerm;

  RentalsResultsListPage({Key? key, required this.searchTerm}): super(key: key);

  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('rentals').where('tags', arrayContainsAny: ["searchTerm"],).snapshots();

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
      body: StreamBuilder<QuerySnapshot>(
        stream: _usersStream,
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
                return rentalCard(context, rental);
              }).toList(),
            );
         
        },
      ),
    );
  }
}







