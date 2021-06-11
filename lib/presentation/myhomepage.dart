import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/data/models/rental.dart';
import 'package:homeland/presentation/reusables/sign_in.dart';
import 'package:homeland/presentation/views/chat_list_screen.dart';
// import 'package:homeland/presentation/views/create_rental_listing_page.dart';
import 'package:homeland/presentation/views/profile_page.dart';
import 'package:homeland/presentation/views/rentals_list.dart';
import 'package:homeland/presentation/views/search_place_page.dart';
// import 'package:homeland/presentation/views/search_rentals_page.dart';
// import 'package:homeland/presentation/placeholder.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentIndex = 0;
  final List<Widget> _navpages = [
    RentalsListPage(),
    // const CreateRentalListingPage(),
    const ChatsListScreen(),
    // SearchPlacePage(
    //   // hintText: "e.g. kenyatta university",
    // ),
    ProfilePage(),
  ];
  bool isLoggedin = true;

  @override
  Widget build(BuildContext context) {
    return isLoggedin
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
  }
}
