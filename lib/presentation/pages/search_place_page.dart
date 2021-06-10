import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/presentation/reusables/text_form_field_widget.dart';

class SearchPlacePage extends StatefulWidget {
  const SearchPlacePage({Key? key, required this.hintText}) : super(key: key);
  final String hintText;

  @override
  _SearchPlacePageState createState() => _SearchPlacePageState();
}

class _SearchPlacePageState extends State<SearchPlacePage> {
  TextEditingController searchTextEditingController = TextEditingController();
  TextEditingController textController1 = TextEditingController();
  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        leading: MaterialButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.chevron_left,
            color: Colors.white,
            size: 32,
          ),
        ),
        title: MaterialButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            "Go Back".toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
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
              color: fgColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                    size: 24,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    width: MediaQuery.of(context).size.width * 0.73,
                    height: 40,
                    child: TextFormFieldWidget(
                      expands: true,
                      minlines: null,
                      maxlines: null,
                      onChanged: (_) => setState(() {}),
                      controller: textController1,
                      obscureText: false,
                      hintText: 'e.g. nairobi, westland',
                      textInputType: TextInputType.multiline,
                      borderSideColor: const Color(0x00000000),
                      clearIconColor: const Color(0xFF757575),
                      onFieldTap: (_) => setState(() {}),
                      onSubmitField: (_) => setState(() {}),
                      
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
