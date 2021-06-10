import 'package:flutter/material.dart';
import 'package:homeland/constants/my_constants.dart';
import 'package:homeland/presentation/reusables/chats_conversation_screen_sent_message_card.dart';
import 'package:homeland/presentation/reusables/text_form_field_widget.dart';

class ChatConversationScreen extends StatefulWidget {
  const ChatConversationScreen({Key? key}) : super(key: key);

  @override
  _ChatConversationScreenState createState() => _ChatConversationScreenState();
}

class _ChatConversationScreenState extends State<ChatConversationScreen> {
  TextEditingController textController1 = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        // automaticallyImplyLeading: true,
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text(
          "Username",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Center(
              child: Icon(
                Icons.call,
                size: 26,
              ),
            ),
          )
        ],
      ),
      key: scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: fgColor,
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(bottom: 55.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ChatsConversationScreenSentMessageCard(
                      textColor: Colors.black,
                      mainAxisAlignment: MainAxisAlignment.start,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      message: "message from my friend",
                      cardColor: Colors.white,
                      profileUrl:
                          'https://images.unsplash.com/photo-1591465709469-5de113a071cc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1504&q=80',
                    ),
                    ChatsConversationScreenSentMessageCard(
                       textColor: Colors.white,
                      mainAxisAlignment: MainAxisAlignment.end,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      message: "message from me",
                      cardColor: backgroundColor,
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 1),
              child: Container(
                padding: const EdgeInsets.only(
                  bottom: 10,
                  right: 10,
                ),
                color: fgColor,
                height: 60,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: const Alignment(0, 1),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          // shape: BoxShape.rectangle,
                        ),
                        child: TextFormFieldWidget(
                          hintText: "Type message",
                          textInputType: TextInputType.multiline,
                          controller: textController1,
                          onSubmitField: () {},
                          onFieldTap: () {},
                          prefixIcon: null,
                          onChanged: (_) => setState(() {}),
                          borderSideColor: const Color(0x00000000),
                          clearIconColor: const Color(0xFF757575),
                          expands: true,
                          minlines: null,
                          maxlines: null,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0, 0.99),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color(0xFF285234),
                          // borderRadius: BorderRadius.circular(50),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
