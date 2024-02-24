import 'package:flutter/material.dart';

class Buttons {
  IconButton camera = IconButton(
      onPressed: () => {},
      icon: const Icon(
        Icons.camera_alt_outlined,
        color: Colors.white60,
      ));

  IconButton search = IconButton(
      onPressed: () => {},
      icon: const Icon(
        Icons.search_rounded,
        color: Colors.white60,
      ));

  PopupMenuButton moveVert = PopupMenuButton(
      icon: const Icon(
        Icons.more_vert,
        color: Colors.white,
      ),
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            const PopupMenuItem(child: Text("New Group")),
            const PopupMenuItem(child: Text("Linked Devices")),
            const PopupMenuItem(child: Text("Settings")),
          ]);
}
