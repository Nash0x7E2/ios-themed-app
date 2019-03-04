import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_chat/model/messages_model.dart';
import 'package:ios_chat/widgets/action_row.dart';
import 'package:ios_chat/widgets/search_bar.dart';


class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ActionRow(
                widgets: <Widget>[
                  Text(
                    "Edit",
                    style: TextStyle(
                        color: CupertinoColors.activeBlue, fontSize: 20.0),
                  ),
                  Icon(
                    CupertinoIcons.create,
                    color: CupertinoColors.activeBlue,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Chats",
                  style: TextStyle(
                      fontSize: 34.0,
                      color: CupertinoColors.black,
                      fontWeight: FontWeight.w800),
                ),
              ),
              ChatSearch(onChanged: (text) => print("You typed $text")),
              SizedBox(height: 14.0),
              Divider(),
              ActionRow(
                widgets: [
                  Text(
                    "Broadcast Lists",
                    style: TextStyle(
                        color: CupertinoColors.activeBlue, fontSize: 20.0),
                  ),
                  Text(
                    "New Group",
                    style: TextStyle(
                        color: CupertinoColors.activeBlue, fontSize: 20.0),
                  ),
                ],
              ),
              Divider(),
              SizedBox(height: 12.0),
              Expanded(
                child: ChatsList(),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ChatsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatMessages.length,
      itemBuilder: (BuildContext context, int index) {
        return Material(
          color: CupertinoColors.white,
          child: ListTile(
            title: Text(chatMessages[index].name),
            trailing: Text(chatMessages[index].timeStamp),
            subtitle: Row(
              children: <Widget>[
                Icon(
                  Icons.check,
                  size: 14.0,
                ),
                SizedBox(
                  width: 12.0,
                ),
                Expanded(child: Text(chatMessages[index].message))
              ],
            ),
            leading: CircleAvatar(
              radius: 26.0,
              backgroundImage: NetworkImage(chatMessages[index].imageUrl),
            ),
          ),
        );
      },
    );
  }
}
