import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/presentation/reusables/contained_photo.dart';
import 'package:homeland/presentation/reusables/profile_page_account_opitions_list_tile.dart';

class ProfilePage extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
            ListView(
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
                              child: containedPhoto(
                                90,
                                90,
                                BorderRadius.circular(1000),
                                'https://picsum.photos/seed/205/600',
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
                              child: Icon(
                                Icons.create,
                                color: Colors.black,
                                size: 28,
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(30, 10, 0, 10),
                          child: Text(
                            'Username',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                ProfilePageAccountOptionsListTile(
                  context,
                  "Your rentals",
                  const Icon(
                    Icons.arrow_right,
                    size: 35,
                  ),
                ),
                const Divider(),
                ProfilePageAccountOptionsListTile(
                  context,
                  "+2547********",
                  const Icon(
                    Icons.create,
                  ),
                ),
                const Divider(),
                ProfilePageAccountOptionsListTile(
                  context,
                  "email@gmail.com",
                  const Icon(
                    Icons.create,
                  ),
                ),
                const Divider(),
                ProfilePageAccountOptionsListTile(
                  context,
                  "Kiambu,ruaka",
                  const Icon(
                    Icons.create,
                  ),
                ),
                const Divider(),
                ProfilePageAccountOptionsListTile(
                  context,
                  "Change password",
                  const Icon(
                    Icons.create,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Align(
                    alignment: const Alignment(0, 0),
                    child: SizedBox(
                      height: 50,
                      width: 120,
                      child: MaterialButton(
                        color: backgroundColor,
                        textColor: Colors.white,
                        onPressed: () {
                          print('Button pressed ...');
                        },
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
            ),
          ],
        ),
      ),
    );
  }
}
