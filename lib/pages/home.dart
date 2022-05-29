import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/utils/theme.dart';
import 'package:whatsapp/widgets/calls.dart';
import 'package:whatsapp/widgets/camera.dart';
import 'package:whatsapp/widgets/chats.dart';
import 'package:whatsapp/widgets/status.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: MyTextStyle.heading1(),
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
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            unselectedLabelColor: Color.fromRGBO(133, 150, 160, 1),
            tabs: <Widget>[
              Tab(
                icon: Icon(CupertinoIcons.camera_fill),
              ),
              Tab(
                child: Text("CHATS"),
              ),
              Tab(
                child: Text("STATUS"),
              ),
              Tab(
                child: Text("CALLS"),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            //Widget for Camera
            Camera(),
            // Widget for CHATS tab
            Chats(),
            // Widget for Status tab
            Status(),
            // Widget for Calls
            Calls()
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
