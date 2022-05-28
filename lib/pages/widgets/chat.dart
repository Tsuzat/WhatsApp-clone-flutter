import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  Widget chatPerson() {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: 80,
        // width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: <Widget>[
              // profile picture
              Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/profile_pic.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text(
                            "Person's name",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "Yesterday",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(133, 150, 160, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: const <Widget>[
                              Icon(
                                Icons.done_all,
                                color: Color.fromRGBO(89, 187, 230, 1),
                                size: 16,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "hello there",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(133, 150, 160, 1),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.volume_off,
                            color: Color.fromRGBO(133, 150, 160, 1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget spacing() {
    return const Divider(
      height: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Column(
          children: <Widget>[
            chatPerson(),
            spacing(),
            chatPerson(),
            spacing(),
            chatPerson(),
            spacing(),
            chatPerson(),
            spacing(),
            chatPerson(),
            spacing(),
            chatPerson(),
            spacing(),
            chatPerson(),
            spacing(),
            chatPerson(),
            spacing(),
            chatPerson(),
            spacing(),
            chatPerson(),
            spacing(),
            chatPerson(),
            spacing(),
            chatPerson(),
            spacing(),
            chatPerson(),
          ],
        ),
      ),
    );
  }
}
