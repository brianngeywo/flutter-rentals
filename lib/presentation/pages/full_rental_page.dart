import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';

class FullRentalPage extends StatefulWidget {
  FullRentalPage({Key? key}) : super(key: key);

  @override
  _FullRentalPageState createState() => _FullRentalPageState();
}

class _FullRentalPageState extends State<FullRentalPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: backgroundColor,
        title: const Text(
          "2 bedrooms",
        ),
      ),
      key: scaffoldKey,
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        backgroundColor: const Color(0xFF52996A),
        icon: const Icon(
          Icons.call,
        ),
        elevation: 8,
        label: const Text("Call me"),
      ),
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(0, -1),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                color: Color(0xFFEEEEEE),
                // image: DecorationImage(
                //   image: NetworkImage(
                //     'https://images.unsplash.com/photo-1449844908441-8829872d2607?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',
                //   ),
                // ),
              ),
              child: Image.network(
                'https://images.unsplash.com/photo-1449844908441-8829872d2607?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 200),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xFFEEEEEE),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: ListView(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                const ListTile(
                  title: Text(
                    '25,000 per month',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Kiambu,ruaka',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color(0x00EEEEEE),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        // width: 100,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.king_bed_rounded,
                              color: Color(0xFF52996A),
                              size: 24,
                            ),
                            Text(
                              '2 bedrooms',
                            )
                          ],
                        ),
                      ),
                      Container(
                        // width: 100
                        height: 40,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.bathtub_sharp,
                              color: Color(0xFF52996A),
                              size: 24,
                            ),
                            Text(
                              '1 bathrooms',
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.directions_car,
                              color: Color(0xFF52996A),
                              size: 24,
                            ),
                            Text(
                              '4 parking',
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 15,
                    left: 15,
                    bottom: 5,
                    right: 15,
                  ),
                  child: const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 15,
                    left: 15,
                    bottom: 5,
                    right: 15,
                  ),
                  child: const Text(
                    'llorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;lorem5;  lorem5;lorem5;lorem5;lorem5; ',
                    style: TextStyle(),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 15,
                    left: 15,
                    bottom: 5,
                    right: 15,
                  ),
                  child: const Text(
                    'Photos',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://picsum.photos/seed/815/600',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://picsum.photos/seed/246/600',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://picsum.photos/seed/735/600',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
