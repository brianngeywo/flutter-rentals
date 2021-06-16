import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String username = "";
  String displayName = "";
  String email = "";
  String photoUrl = "";
  String userId = "";
  String phoneNumber = "";
  String location = "";
  String publicName = "";
  UserModel({
    required this.username,
    required this.displayName,
    required this.email,
    required this.photoUrl,
    required this.userId,
    this.phoneNumber = '',
    this.location = '',
    this.publicName = '',
  });
  factory UserModel.fromFirestore(DocumentSnapshot documentSnapshot) {
    return UserModel(
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

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'display name': displayName,
      'email': email,
      'photo url': photoUrl,
      'user id': userId,
      'phone number': phoneNumber,
      'location': location,
      'public name': publicName,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      displayName: map["display name"],
      email: map["email"],
      photoUrl: map["photo url"],
      userId: map["user id"],
      username: map["username"],
      phoneNumber: map["phone number"],
      location: map["location"],
      publicName: map["public name"],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
}
