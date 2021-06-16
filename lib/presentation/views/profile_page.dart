import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/data/models/user.dart';
import 'package:homeland/data/services/auth.dart';
import 'package:homeland/presentation/myhomepage.dart';
import 'package:homeland/presentation/reusables/contained_photo.dart';
import 'package:homeland/presentation/reusables/profile_page_account_opitions_list_tile.dart';
// import 'package:homeland/presentation/reusables/sign_in.dart';
import 'package:homeland/presentation/views/user_rentals_page.dart';

class ProfilePage extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  Stream<DocumentSnapshot> provideDocumentFieldStream() {
    return FirebaseFirestore.instance.collection('users').doc(currentUser!.uid).snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text(
          "Account",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      key: scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            StreamBuilder<DocumentSnapshot>(
              stream: provideDocumentFieldStream(),
              builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                if (snapshot.hasData) {
                  //snapshot -> AsyncSnapshot of DocumentSnapshot
                  //snapshot.data -> DocumentSnapshot
                  //snapshot.data.data -> Map of fields that you need :)

                  Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
                  UserModel user = UserModel.fromMap(data);

                  return ListView(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 0, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 160,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                                    child: containedPhoto(90, 90, BorderRadius.circular(1000), user.photoUrl),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
                                    child: Icon(Icons.create, color: Colors.black, size: 28),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                                child: Text(
                                  user.displayName.toUpperCase(),
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 30,
                        decoration: const BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Text(
                              'Account Details',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      profilePageAccountOptionsListTile(
                          context,
                          "Your rentals",
                          IconButton(
                            onPressed: () => Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) => const UserRentalsPage())),
                            icon: const Icon(
                              Icons.arrow_right,
                              size: 35,
                            ),
                          )),
                      const Divider(),
                      profilePageAccountOptionsListTile(
                        context,
                        user.phoneNumber == "" ? user.phoneNumber : "update phone number",
                        const Icon(
                          Icons.create,
                        ),
                      ),
                      const Divider(),
                      profilePageAccountOptionsListTile(
                        context,
                        user.email,
                        const Icon(
                          Icons.create,
                        ),
                      ),
                      // const Divider(),
                      // profilePageAccountOptionsListTile(
                      //   context,
                      //   user.location == "" ? user.location : "update place",
                      //   const Icon(
                      //     Icons.create,
                      //   ),
                      // ),
                      // const Divider(),
                      // profilePageAccountOptionsListTile(
                      //   context,
                      //   "Change password",
                      //   const Icon(
                      //     Icons.create,
                      //   ),
                      // ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: MediaQuery.of(context).size.width,
                        height: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Align(
                          alignment: const Alignment(0, 0),
                          child: SizedBox(
                            height: 40,
                            width: 100,
                            child: MaterialButton(
                              color: backgroundColor,
                              textColor: Colors.white,
                              onPressed: () => AuthMethods().signOut(context),
                              child: const Text(
                                "Sign Out",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }
                return Center(
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      color: backgroundColor,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
