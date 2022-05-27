import 'package:flutter/material.dart';
import 'package:whatsapp/pages/widgets/chat.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(18, 27, 34, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(31, 44, 52, 1),
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(133, 150, 160, 1),
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Color.fromRGBO(133, 150, 160, 1),
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Color.fromRGBO(133, 150, 160, 1),
                size: 30,
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Color.fromRGBO(5, 166, 131, 1),
            indicatorWeight: 3,
            labelColor: Color.fromRGBO(5, 166, 131, 1),
            unselectedLabelColor: Color.fromRGBO(133, 150, 160, 1),
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.camera_alt,
                ),
              ),
              Tab(
                child: Text(
                  "CHATS",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "STATUS",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "CALLS",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text(
                "Camera Feild",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            // Widget for CHATS tab
            Chat(),
            Center(
              child: Text(
                "Status",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Center(
              child: Text(
                "Calls",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromRGBO(0, 168, 132, 1),
          child: const Icon(Icons.chat),
        ),
      ),
    );
  }
}
