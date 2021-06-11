import 'package:flutter/material.dart';

Widget profilePageAccountOptionsListTile(BuildContext context, String title, Icon action) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 40,
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Text(
            title,
          ),
        ),
        Padding(padding: const EdgeInsets.fromLTRB(0, 0, 20, 0), child: action)
      ],
    ),
  );
}
