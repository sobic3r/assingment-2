import 'package:drawer/chats.dart';
import 'package:drawer/updates.dart';
import 'package:flutter/material.dart';

class Constants {
  Container? peopleContainer = null;

  Container? chatsContainer = null;

  Tab updateTab = Tab(
    text: "Updates",
  );

  Tab callsTab = Tab(
    text: "Calls",
  );

  Constants() {
    peopleContainer =
        _generateContainers(Icons.people_sharp, null) as Container?;
    chatsContainer = _generateContainers(null, "Chats") as Container?;
  }

  StatefulWidget generateTabBarView(BuildContext context) {
    return TabBarView(children: [
      _generateNavigations(PeoPle(), context),
      _generateNavigations(ChAts(), context),
      _generateNavigations(Status(), context),
      _generateNavigations(CaLls(), context),
    ]);
  }

  StatefulWidget _generateNavigations(
      StatelessWidget widgetToRedirect, BuildContext context) {
    return Navigator(
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => widgetToRedirect,
        );
      },
    );
  }

  StatelessWidget _generateContainers(IconData? icon, String? text) {
    if (text == null) {
      return Container(
        child: Tab(
          icon: Icon(icon),
        ),
      );
    } else {
      return Container(
          child: Tab(
        text: text,
      ));
    }
  }
}
