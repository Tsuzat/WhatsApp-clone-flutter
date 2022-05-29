import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat.dart';
import 'package:whatsapp/widgets/profile_pic_dialog.dart';

class ChatPerson extends StatelessWidget {
  final Chat item;
  const ChatPerson({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => profilePicDialog(item),
          );
        },
        child: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(item.imgUrl),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            item.name,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            item.lastSeen,
            style: const TextStyle(
              fontSize: 14,
              color: Color.fromRGBO(133, 150, 160, 1),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.done_all_rounded,
                color: item.islastChatSeen
                    ? const Color.fromRGBO(89, 187, 230, 1)
                    : const Color.fromRGBO(133, 150, 160, 1),
                size: 16,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                item.lastChat,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(133, 150, 160, 1),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          mutedOrNot(item.isMuted),
        ],
      ),
    );
  }
}

Widget mutedOrNot(bool isMuted) {
  return isMuted
      ? const Icon(
          CupertinoIcons.volume_off,
          size: 16,
          color: Color.fromRGBO(133, 150, 160, 1),
        )
      : const SizedBox(
          width: 0,
        );
}
