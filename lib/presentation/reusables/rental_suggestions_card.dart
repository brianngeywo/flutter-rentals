import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/data/models/rental.dart';

Widget rentalSuggestionsAndResultsCard(BuildContext context, Rental rental) {
  double cardHeight = 110;
  // var screenWidth = MediaQuery.of(context).size.width;
  return Column(
    children: [
      Container(
        width: double.infinity,
        height: cardHeight,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        padding: const EdgeInsets.only(top: 10),
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Colors.white,
          elevation: 10,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Align(
            alignment: const Alignment(0, 0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CachedNetworkImage(
                    imageUrl: rental.photoUrl,
                    fadeInDuration: const Duration(seconds: 1),
                    height: cardHeight,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 12.0,
                      left: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          rental.price + ' kshs per month',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: backgroundColor,
                          ),
                        ),
                        Text(
                          rental.university.toUpperCase() + ', ' + rental.town.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          rental.bedrooms + ' bedroom'.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
