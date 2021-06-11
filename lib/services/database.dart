import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:homeland/data/models/rental.dart';

class DbMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Rental rental = Rental(
    bathrooms: "",
    bedrooms: '',
    description: '',
    photoUrl: '',
    town: '',
    university: '',
    wifi: false,
    price:'',
  );
  getAllRentals() async {
    await FirebaseFirestore.instance.collection('rentals').get().then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        if (doc.exists) {
          rental = Rental.fromFirestore(doc);
        }
      });
    });
    return rental;
  }
}
