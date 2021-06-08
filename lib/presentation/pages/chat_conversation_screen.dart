import 'package:flutter/material.dart';

class ChatConversationScreen extends StatelessWidget {
  const ChatConversationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: ElevatedButton.icon(
            onPressed: () => Navigator.of(context).pop(),
            label: const Text(
              "Go Back",
            ),
            icon: const Icon(Icons.chevron_left)),
      ),
      body: const Center(
        child: Text("chat conversation screen"),
      ),
    );
  }
}
