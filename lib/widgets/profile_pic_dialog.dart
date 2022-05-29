import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat.dart';

profilePicDialog(Chat item) => Dialog(
      child: Container(
        color: const Color.fromRGBO(31, 44, 52, 1),
        width: 300,
        height: 300,
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  image: DecorationImage(
                    image: AssetImage(item.imgUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8),
                      color: const Color.fromARGB(75, 0, 0, 0),
                      width: double.infinity,
                      child: Text(
                        item.name,
                        style:
                            const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.chat,
                    size: 26,
                    color: Color.fromRGBO(0, 168, 132, 1),
                  ),
                  Icon(
                    Icons.phone,
                    size: 26,
                    color: Color.fromRGBO(0, 168, 132, 1),
                  ),
                  Icon(
                    Icons.videocam,
                    size: 26,
                    color: Color.fromRGBO(0, 168, 132, 1),
                  ),
                  Icon(
                    Icons.error_outline,
                    size: 26,
                    color: Color.fromRGBO(0, 168, 132, 1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
