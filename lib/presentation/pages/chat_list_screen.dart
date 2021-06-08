import 'package:flutter/material.dart';
import 'package:homeland/presentation/pages/chat_conversation_screen.dart';
import 'package:homeland/presentation/reusables/chats_list_card.dart';

class ChatsListScreen extends StatelessWidget {
  const ChatsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // leading: const Icon(Icons.home),
        title: const Text(
          "HomeLand",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        children: List.generate(
          10,
          (index) => InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const ChatConversationScreen();
                },
              ),
            ),
            child: chatsListCard(),
          ),
        ),
      ),

      // Center(
      //   child: InkWell(
      //     onTap: () => Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) {
      //           return const ChatConversationScreen();
      //         },
      //       ),
      //     ),
      //     child: const Text("chats list will come here"),
      //   ),
      // ),
    );
  }
}
