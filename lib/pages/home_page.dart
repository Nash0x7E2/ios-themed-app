import 'package:flutter/cupertino.dart';
import 'package:ios_chat/pages/calls_page.dart';
import 'package:ios_chat/pages/camera_page.dart';
import 'package:ios_chat/pages/chat_page.dart';
import 'package:ios_chat/pages/settings_page.dart';
import 'package:ios_chat/pages/status_page.dart';

class HomePage extends StatelessWidget {
  final List<Widget> _pages = [
    StatusPage(),
    CallsPage(),
    CameraPage(),
    ChatPage(),
    SettingsPage(),
  ];

  List<BottomNavigationBarItem> navBarItems() {
    return List.unmodifiable(
      [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.profile_circled),
          title: Text("Status"),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.phone),
          title: Text("Calls"),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.photo_camera),
          title: Text("Camera"),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.conversation_bubble),
          title: Text("Chats"),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.settings),
          title: Text("Settings"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: 3,
        items: navBarItems(),
      ),
      tabBuilder: (BuildContext context, int index) => _pages[index],
    );
  }
}
