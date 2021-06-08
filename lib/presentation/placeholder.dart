import 'package:flutter/material.dart';

class MyCustomWidget extends StatelessWidget {
  final Color pagecolor;

  const MyCustomWidget(
    this.pagecolor,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pagecolor,
    );
  }
}
