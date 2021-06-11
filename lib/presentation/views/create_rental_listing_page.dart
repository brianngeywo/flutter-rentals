import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/presentation/reusables/create_rental_form_field.dart';

class CreateRentalListingPage extends StatefulWidget {
  const CreateRentalListingPage({Key? key}) : super(key: key);

  @override
  _CreateRentalListingPageState createState() => _CreateRentalListingPageState();
}

class _CreateRentalListingPageState extends State<CreateRentalListingPage> {
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();
  TextEditingController textController3 = TextEditingController();
  TextEditingController textController4 = TextEditingController();
  TextEditingController textController5 = TextEditingController();
  TextEditingController textController6 = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  FocusNode focusNode = FocusNode();
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();
  FocusNode focusNode5 = FocusNode();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
    textController6 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text(
          "HomeLand",
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
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: const [
                          Icon(Icons.add_a_photo),
                          Text(
                            'add photos',
                          )
                        ],
                      ),
                    ),
                  ),
                  createRentalFormFieldsWidget(
                      context, 40, 'place location', TextInputType.streetAddress, textController1, focusNode),
                  createRentalFormFieldsWidget(
                      context, 40, 'number of bedrooms', TextInputType.number, textController2, focusNode1),
                  createRentalFormFieldsWidget(
                      context, 40, 'number of bathrooms', TextInputType.number, textController3, focusNode2),
                  createRentalFormFieldsWidget(
                      context, 40, 'parking', TextInputType.number, textController4, focusNode3),
                  createRentalFormFieldsWidget(
                      context, 40, 'price per month', TextInputType.number, textController5, focusNode4),
                  createRentalFormFieldsWidget(
                      context, 140, 'property description', TextInputType.multiline, textController6, focusNode5),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Align(
                      alignment: const Alignment(0, -1),
                      child: SizedBox(
                        height: 40,
                        width: 100,
                        child: MaterialButton(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          color: Colors.teal,
                          textColor: Colors.white,
                          child: const Text("continue"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
