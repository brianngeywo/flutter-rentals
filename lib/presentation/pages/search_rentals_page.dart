import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/presentation/myhomepage.dart';
import 'package:homeland/presentation/pages/rentals_results_list.dart';
import 'package:homeland/presentation/pages/search_place_page.dart';
import 'package:homeland/presentation/reusables/text_form_field_widget.dart';

class SearchRentalsPage extends StatefulWidget {
  const SearchRentalsPage({Key? key}) : super(key: key);

  @override
  _SearchRentalsPageState createState() => _SearchRentalsPageState();
}

class _SearchRentalsPageState extends State<SearchRentalsPage> {
  TextEditingController searchTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        // leading: const Icon(Icons.home),
        title: const Text(
          "HomeLand",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchPlacePage(
                      hintText: "search place",
                    ),
                  ),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: fgColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: const [
                        Icon(
                          Icons.search_rounded,
                          color: Colors.black,
                          size: 24,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            'Search...',
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const RentalsResultsListPage(),
                ),
              ),
              child: const Text(
                "Use your location",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
