import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth auth = FirebaseAuth.instance;
  getCurrentUser() {
    return auth.currentUser;
  }
  signinwithgoogle(BuildContext context){
  }
}