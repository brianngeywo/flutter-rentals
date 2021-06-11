import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/data/models/rental.dart';

Widget rentalCard(BuildContext context, Rental rental) {
  double cardHeight = 330;
  double imageHeight = 230;
  var screenWidth = MediaQuery.of(context).size.width;
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: Container(
          width: double.infinity,
          height: cardHeight,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: Colors.white,
            elevation: 10,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20),),),
            child: Align(
              alignment: const Alignment(0, 0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CachedNetworkImage(
                      imageUrl: rental.photoUrl,
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
                        child: Align(
                          alignment: const Alignment(-1, 0),
                          child: Text(
                            rental.price + ' kshs per month',
                            style: TextStyle(
                              fontSize: 20,
                              color: backgroundColor,
                              fontWeight: FontWeight.bold,
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
                        child: Align(
                          alignment: const Alignment(-1, 0),
                          child: Text(
                            rental.university.toUpperCase() + ', ' + rental.town.toUpperCase(),
                            style: const TextStyle(
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
                        child: Align(
                          alignment: const Alignment(-1, 0),
                          child: Text(
                            rental.bedrooms.toUpperCase() + ' bedroom'.toUpperCase(),
                            style: const TextStyle(
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
      ),
            Padding(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: Container(
          width: double.infinity,
          height: cardHeight,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: Colors.white,
            elevation: 10,
            shape: RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Align(
              alignment: const Alignment(0, 0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CachedNetworkImage(
                      imageUrl: rental.photoUrl,
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
                        child: Align(
                          alignment: const Alignment(-1, 0),
                          child: Text(
                            rental.price + ' kshs per month',
                            style: TextStyle(
                              fontSize: 20,
                              color: backgroundColor,
                              fontWeight: FontWeight.bold,
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
                        child: Align(
                          alignment: const Alignment(-1, 0),
                          child: Text(
                            rental.university.toUpperCase() + ', ' + rental.town.toUpperCase(),
                            style: const TextStyle(
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
                        child: Align(
                          alignment: const Alignment(-1, 0),
                          child: Text(
                            rental.bedrooms.toUpperCase() + ' bedroom'.toUpperCase(),
                            style: const TextStyle(
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
      ),
    ],
  );
}
