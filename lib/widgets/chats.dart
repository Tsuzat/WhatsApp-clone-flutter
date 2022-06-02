import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat.dart';
import 'package:whatsapp/utils/chat_persons.dart';
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

  void getData() async {
    // await Future.delayed(
    //   const Duration(seconds: 1),
    // );
    ChatLog.items =
        List.from(chatData).map<Chat>((item) => Chat.fromMap(item)).toList();
    if (!mounted) return;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(5, 166, 131, 1),
        child: const Icon(
          Icons.chat_sharp,
          color: Colors.white,
        ),
      ),
    );
  }
}
