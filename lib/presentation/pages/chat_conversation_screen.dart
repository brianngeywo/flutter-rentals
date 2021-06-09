import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';

class ChatConversationScreen extends StatelessWidget {
  const ChatConversationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: false,
        title: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Row(
              children: const [
                Icon(Icons.chevron_left),
                Text(
                  "Go Back",
                ),
              ],
            ),
            ),
      ),
      body: const Center(
        child: Text("chat conversation screen"),
      ),
    );
  }
}
