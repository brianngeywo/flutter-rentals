import 'package:flutter/material.dart';
import 'package:homeland/data/models/user.dart';
import 'package:homeland/presentation/reusables/contained_photo.dart';

Widget chatsListCard(User user) {
  return ListTile(
    leading: containedPhoto(
      50,
      50,
      BorderRadius.circular(1000),
      user.photoUrl,
    ),
    title: Text(user.displayName),
    subtitle: Text(user.email),
  );
}
