import 'package:cloud_firestore/cloud_firestore.dart';

class Rental {
  String town = '';
  String university = '';
  String description = '';
  String photoUrl = '';
  String bedrooms = '';
  String bathrooms = '';
  bool wifi = false;
  String price;
  Rental({
    required this.town,
    required this.university,
    required this.description,
    required this.photoUrl,
    required this.bedrooms,
    required this.bathrooms,
    required this.wifi,
    required this.price,
  });

  factory Rental.fromFirestore(DocumentSnapshot doc) {
    return Rental(
      town: doc['town'],
      university: doc['university'],
      description: doc['description'],
      photoUrl: doc['photo url'],
      bedrooms: doc['bedrooms'],
      bathrooms: doc['bathrooms'],
      wifi: doc['wifi'],
      price: doc['price'],
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Rental &&
        other.town == town &&
        other.university == university &&
        other.description == description &&
        other.photoUrl == photoUrl &&
        other.bedrooms == bedrooms &&
        other.bathrooms == bathrooms &&
        other.wifi == wifi;
  }

  @override
  int get hashCode {
    return town.hashCode ^
        university.hashCode ^
        description.hashCode ^
        photoUrl.hashCode ^
        bedrooms.hashCode ^
        bathrooms.hashCode ^
        wifi.hashCode;
  }
}
