import 'package:flutter/material.dart';
import 'package:homeland/presentation/reusables/text_form_field_widget.dart';

class SearchPlacePage extends StatefulWidget {
  const SearchPlacePage({Key? key, required this.hintText}) : super(key: key);
  final String hintText;

  @override
  _SearchPlacePageState createState() => _SearchPlacePageState();
}

class _SearchPlacePageState extends State<SearchPlacePage> {
  TextEditingController searchTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: MaterialButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.chevron_left,
            color: Colors.black,
            size: 32,
          ),
        ),
        title: MaterialButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            "Go Back".toUpperCase(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
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
              color: const Color(0xB6C9C9C9),
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
    );
  }
}
