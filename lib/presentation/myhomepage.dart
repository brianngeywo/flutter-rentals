import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/data/services/auth.dart';
import 'package:homeland/presentation/pages/auth/welcome_page.dart';
import 'package:homeland/presentation/reusables/sign_in.dart';
import 'package:homeland/presentation/views/chat_list_screen.dart';
import 'package:homeland/presentation/views/profile_page.dart';
import 'package:homeland/presentation/views/rentals_list.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

var currentUser = FirebaseAuth.instance.currentUser;

// bool isLoggedin = false;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentIndex = 0;
  final List<Widget> _navpages = [
    RentalsListPage() ,
    // const CreateRentalListingPage(),
    ChatsListScreen(),
    // SearchPlacePage(
    //   // hintText: "e.g. kenyatta university",
    // ),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AuthMethods().getCurrentUser(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return snapshot.hasData
            ? Scaffold(
                body: _navpages[_currentIndex],
                bottomNavigationBar: SalomonBottomBar(
                  currentIndex: _currentIndex,
                  onTap: (i) => setState(() => _currentIndex = i),
                  items: [
                    /// Home
                    SalomonBottomBarItem(
                      icon: const Icon(
                        Icons.home,
                        color: Colors.teal,
                      ),
                      title: const Text(
                        "Rentals",
                        style: TextStyle(
                          color: Colors.teal,
                        ),
                      ),
                      selectedColor: backgroundColor,
                    ),

                    // /// create post
                    // SalomonBottomBarItem(
                    //   icon: const Icon(
                    //     Icons.create,
                    //     color: Colors.teal,
                    //   ),
                    //   title: const Text(
                    //     " Post",
                    //     style: TextStyle(
                    //       color: Colors.teal,
                    //     ),
                    //   ),
                    //   selectedColor: backgroundColor,
                    // ),

                    /// Chats
                    SalomonBottomBarItem(
                      icon: const Icon(
                        Icons.chat,
                        color: Colors.teal,
                      ),
                      title: const Text(
                        "Chats",
                        style: TextStyle(
                          color: Colors.teal,
                        ),
                      ),
                      selectedColor: backgroundColor,
                    ),

                    // /// Search
                    // SalomonBottomBarItem(
                    //   icon: const Icon(
                    //     Icons.search,
                    //     color: Colors.teal,
                    //   ),
                    //   title: const Text(
                    //     "Search",
                    //     style: TextStyle(
                    //       color: Colors.teal,
                    //     ),
                    //   ),
                    //   selectedColor: backgroundColor,
                    // ),

                    /// Profile
                    SalomonBottomBarItem(
                      icon: const Icon(
                        Icons.person,
                        color: Colors.teal,
                      ),
                      title: const Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.teal,
                        ),
                      ),
                      selectedColor: backgroundColor,
                    ),
                  ],
                ),
              )
            : signInPage(context);
      },
    );
  }
}
