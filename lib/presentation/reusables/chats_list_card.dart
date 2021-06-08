import 'package:flutter/material.dart';

Widget chatsListCard() {
  return const ListTile(
    leading: CircleAvatar(
      backgroundColor: Colors.grey,
      radius: 28,
    ),
    title: Text("User name"),
    subtitle: Text("message"),
  );
}
