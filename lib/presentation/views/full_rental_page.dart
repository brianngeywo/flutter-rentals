import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/data/models/rental.dart';
import 'package:homeland/presentation/reusables/contained_photo.dart';

class FullRentalPage extends StatefulWidget {
  const FullRentalPage({
    Key? key,
    required this.rental,
  }) : super(key: key);
  final Rental rental;

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
        title: Text(
          widget.rental.bedrooms + " bedrooms",
        ),
      ),
      key: scaffoldKey,
      bottomSheet: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton.extended(
              heroTag: "call",
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
            FloatingActionButton.extended(
              heroTag: "message",
              onPressed: () {
                print('FloatingActionButton pressed ...');
              },
              backgroundColor: const Color(0xFF52996A),
              icon: const Icon(
                Icons.call,
              ),
              elevation: 8,
              label: const Text("Message me"),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(0, -1),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: CachedNetworkImage(
                imageUrl: widget.rental.photoUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 200,
            ),
            padding: const EdgeInsets.only(
              bottom: 80,
            ),
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
                ListTile(
                  title: Text(
                    widget.rental.price + ' per month',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    widget.rental.university + ', ' + widget.rental.town,
                    style: const TextStyle(
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
                          children: [
                            const Icon(
                              Icons.king_bed_rounded,
                              color: Color(0xFF52996A),
                              size: 24,
                            ),
                            Text(
                              widget.rental.bedrooms + ' bedrooms',
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        // width: 100
                        height: 40,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.bathtub_sharp,
                              color: Color(0xFF52996A),
                              size: 24,
                            ),
                            Text(
                              widget.rental.bathrooms + ' bathrooms',
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              widget.rental.wifi ? Icons.wifi : Icons.wifi_off,
                              color: const Color(0xFF52996A),
                              size: 24,
                            ),
                            const Text(
                              'wifi',
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15, left: 15, bottom: 5, right: 15),
                  child: const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15, left: 15, bottom: 5, right: 15),
                  child: Text(
                    widget.rental.description,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                 Container(
                  margin: const EdgeInsets.only(top: 15, left: 15, bottom: 5, right: 15),
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
                      containedPhoto(
                        200,
                        200,
                        BorderRadius.circular(20),
                        'https://picsum.photos/seed/815/600',
                      ),
                      containedPhoto(
                        200,
                        200,
                        BorderRadius.circular(20),
                        'https://picsum.photos/seed/815/600',
                      ),
                      containedPhoto(
                        200,
                        200,
                        BorderRadius.circular(20),
                        'https://picsum.photos/seed/815/600',
                      ),
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
