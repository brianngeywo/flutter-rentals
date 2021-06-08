import 'package:flutter/material.dart';
import 'package:homeland/presentation/reusables/profile_page_account_opitions_list_tile.dart';

class ProfilePage extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            child: Image.network(
                              'https://picsum.photos/seed/205/600',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
                          child: Icon(
                            Icons.create_outlined,
                            color: Colors.black,
                            size: 24,
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                      child: Text(
                        'Username',
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
              child: Center(
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'Account Details',
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
                decoration: const BoxDecoration(color: Color(0xFFEEEEEE)),
                child: Align(
                  alignment: const Alignment(0, -1),
                  child: MaterialButton(
                    color: Colors.white,
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    child: const Text(
                      "Sign Out",
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
