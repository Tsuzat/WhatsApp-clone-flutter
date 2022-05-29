import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:whatsapp/models/chat.dart';
import 'package:whatsapp/widgets/chat_person.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    // await Future.delayed(
    //   const Duration(seconds: 2),
    // );
    var encodedJson = await rootBundle.loadString("assets/data/chat_data.json");
    var decodedJson = jsonDecode(encodedJson);
    ChatLog.items =
        List.from(decodedJson).map<Chat>((item) => Chat.fromMap(item)).toList();
    if (!mounted) return;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: ChatLog.items.isNotEmpty
          ? ListView.builder(
              itemCount: ChatLog.items.length,
              itemBuilder: (context, index) {
                return ChatPerson(item: ChatLog.items[index]);
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
