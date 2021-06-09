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
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    width: MediaQuery.of(context).size.width * 0.73,
                    height: 40,
                    child: TextFormField(
                      expands: true,
                      minLines: null,
                      maxLines: null,
                      onChanged: (_) => setState(() {}),
                      controller: textController1,
                      obscureText: false,
                      decoration: InputDecoration(
                        // labelText: 'property description',
                        hintText: 'e.g. nairobi, westland',
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        suffixIcon: textController1.text.isNotEmpty
                            ? InkWell(
                                onTap: () => setState(
                                  () => textController1.clear(),
                                ),
                                child: const Icon(
                                  Icons.clear,
                                  color: Color(0xFF757575),
                                  size: 22,
                                ),
                              )
                            : null,
                      ),
                      keyboardType: TextInputType.multiline,
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
