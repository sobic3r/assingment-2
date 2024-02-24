import 'package:drawer/buttons.dart';
import 'package:drawer/constants.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class whatsApp extends StatelessWidget {
  const whatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    Constants constants = new Constants();
    Buttons buttons = new Buttons();
    List<Widget> widgets = [
      constants.peopleContainer as Widget,
      constants.chatsContainer as Widget,
      constants.updateTab,
      constants.callsTab,
    ];
    return DefaultTabController(
      length: widgets.length,
      initialIndex: 1,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorWeight: 5,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white30,
              tabs: widgets,
            ),
            backgroundColor: Colors.teal[800],
            title: const Text(
              "WhatsApp",
              style:
                  TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
            ),
            actions: [
              buttons.camera,
              buttons.search,
              buttons.moveVert,
            ],
          ),
          body: constants.generateTabBarView(
              context) //  floatingActionButton: DecoratedFloatingActionButton(),
          //  floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
          ),
    );
  }
}
