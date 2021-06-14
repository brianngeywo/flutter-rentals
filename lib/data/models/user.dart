import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String username = "";
  String displayName = "";
  String email = "";
  String photoUrl = "";
  String userId = "";
  String phoneNumber = "";
  String location = "";
  String publicName = "";
  User({
    required this.username,
    required this.displayName,
    required this.email,
    required this.photoUrl,
    required this.userId,
    this.phoneNumber = '',
    this.location = '',
    this.publicName = '',
  });
  factory User.fromFirestore(DocumentSnapshot documentSnapshot) {
    return User(
      displayName: documentSnapshot["display name"],
      email: documentSnapshot["email"],
      photoUrl: documentSnapshot["photo url"],
      userId: documentSnapshot["user id"],
      username: documentSnapshot["username"],
      phoneNumber: documentSnapshot["phone number"],
      location: documentSnapshot["location"],
      publicName: documentSnapshot["public name"],
    );
  }
}
