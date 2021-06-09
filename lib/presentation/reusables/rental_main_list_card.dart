import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget rentalCard(BuildContext context) {
  double cardHeight = 360;
  double imageHeight = 260;
  var screenWidth = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.fromLTRB(1, 5, 1, 5),
    child: Container(
      width: double.infinity,
      height: cardHeight,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.white,
        elevation: 20,
        child: Align(
          alignment: const Alignment(0, 0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CachedNetworkImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1591465709469-5de113a071cc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1504&q=80',
                  width: double.infinity,
                  fadeInDuration: const Duration(seconds: 1),
                  height: imageHeight,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(7, 2, 0, 0),
                  child: Container(
                    width: screenWidth,
                    height: 25,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: const Align(
                      alignment: Alignment(-1, 0),
                      child: Text(
                        'Kshs 25,000 per month',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(7, 2, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 25,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: const Align(
                      alignment: Alignment(-1, 0),
                      child: Text(
                        'Kiambu, Ruaka',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(7, 2, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 25,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: const Align(
                      alignment: Alignment(-1, 0),
                      child: Text(
                        '2 bedroom',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
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
