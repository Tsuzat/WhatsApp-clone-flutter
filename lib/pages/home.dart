
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/utils/theme.dart';
import 'package:whatsapp/widgets/calls.dart';
import 'package:whatsapp/widgets/camera.dart';
import 'package:whatsapp/widgets/chats.dart';
import 'package:whatsapp/widgets/status.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: const Color.fromRGBO(5, 166, 131, 1),
          indicatorWeight: 3,
          labelColor: const Color.fromRGBO(5, 166, 131, 1),
          labelStyle:
              const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          unselectedLabelColor: const Color.fromRGBO(133, 150, 160, 1),
          tabs: const <Widget>[
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
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
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
    );
  }
}
