import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/data/models/user.dart';
import 'package:homeland/data/services/database.dart';
import 'package:homeland/helper_functions/sharedpref_helper.dart';
import 'package:homeland/presentation/myhomepage.dart';
import 'package:homeland/presentation/reusables/chats_list_card.dart';
import 'package:homeland/presentation/views/chat_conversation_screen.dart';
import 'package:homeland/presentation/views/search_users.dart';

class ChatsListScreen extends StatefulWidget {
  @override
  State<ChatsListScreen> createState() => _ChatsListScreenState();
}

class _ChatsListScreenState extends State<ChatsListScreen> {
  String? myUsername;
  String getChatRoomIdbyUserId(String a, String b) {
    // if (a.substring(0, 1).codeUnitAt(0) > b.substring(0, 1).codeUnitAt(0)) {
    //   return "$b\_$a";
    // } else {
    //   return "$a\_$b";
    // }
    if (a.hashCode <= b.hashCode) {
      return '$a-$b';
    } else {
      return '$b-$a';
    }
  }

  getPrefs() async {
    myUsername = await SharedPreferenceHelper().getUsername();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPrefs();
  }

  final Stream<QuerySnapshot> usersStream = FirebaseFirestore.instance.collection("users").snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          // leading: const Icon(Icons.home),
          title: const Text(
            "HomeLand",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          actions: [
            Center(
              child: IconButton(
                padding: const EdgeInsets.only(right: 10),
                onPressed: () {
                  showSearch(context: context, delegate: ChatsSearch());
                },
                icon: const Icon(Icons.search_rounded),
              ),
            ),
          ]),
      body: StreamBuilder<QuerySnapshot>(
        stream: usersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading");
            }

            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                UserModel user = UserModel.fromFirestore(document);

                return user.userId != currentUser?.uid
                    ? InkWell(
                        onTap: () {
                          String chatRoomId = getChatRoomIdbyUserId(currentUser!.uid, user.userId);
                          Map<String, dynamic> chatRoomInforMap = {
                            "users": [myUsername, user.username]
                          };
                          DatabaseMethods().createChatRoom(chatRoomId, chatRoomInforMap);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ChatConversationScreen(
                                  user: user,
                                );
                              },
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            chatsListCard(user),
                            const Divider(),
                          ],
                        ),
                      )
                    : Container();
              }).toList(),
            );
          }
          return const Text("no chats found...");
        },
      ),
    );
  }
}
