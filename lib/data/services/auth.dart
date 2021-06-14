import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:homeland/data/services/database.dart';
import 'package:homeland/helper_functions/sharedpref_helper.dart';
import 'package:homeland/presentation/pages/auth/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthMethods {
  final FirebaseAuth auth = FirebaseAuth.instance;
  getCurrentUser() async {
    return await auth.currentUser;
  }

  Future<UserCredential> handleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    // print("signed in " + user.credential(user));
    final UserCredential? userCredential = await auth.signInWithCredential(credential);
    User? userDetails = userCredential?.user;
    if (userCredential != null) {
      SharedPreferenceHelper().saveUserId(userDetails!.uid);
      SharedPreferenceHelper().saveDisplayname(userDetails.displayName!);
      SharedPreferenceHelper().saveUserEmail(userDetails.email!);
      SharedPreferenceHelper().saveUsername(userDetails.email!.replaceAll("@gmail.com", ""));
      SharedPreferenceHelper().saveUserProfileUrl(userDetails.photoURL!);
      Map<String, dynamic> userInformationMap = {
        "user id": userDetails.uid,
        "email": userDetails.email,
        "display name": userDetails.displayName!.toLowerCase(),
        "photo url": userDetails.photoURL,
        "username": userDetails.email!.replaceAll("@gmail.com", ""),
        "phone number": userDetails.phoneNumber != "" && userDetails.phoneNumber != null ? userDetails.phoneNumber : "",
        "location": "",
        "public name": "",
      };
      DatabaseMethods().addUserinfoToDatabase(context,userDetails.uid, userInformationMap);
    }
    // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const MyHomePage()));
    return userCredential!;
  }

  signOut(BuildContext context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
    await auth.signOut().then(
          (value) => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const WelcomePage()),
          ),
        );
  }


}
