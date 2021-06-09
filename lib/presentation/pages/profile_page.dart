import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
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
                          child: Container(
                            width: 90,
                            height: 90,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: CachedNetworkImage(
                              imageUrl: 'https://picsum.photos/seed/205/600',
                              fadeInDuration: const Duration(seconds: 1),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 20,20, 0),
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
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
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
                child:  Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'Account Details',
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15,),
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
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: double.infinity,
                decoration: const BoxDecoration(color: Color(0xFFEEEEEE),),
                child: Align(
                  alignment: const Alignment(0, -1),
                  child: SizedBox(
                    height: 50,
                    width: 150,
                    child: MaterialButton(
                      color: backgroundColor,
                      textColor: Colors.white,
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      child: const Text(
                        "Sign Out",
                        style: TextStyle(fontSize: 17,),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
