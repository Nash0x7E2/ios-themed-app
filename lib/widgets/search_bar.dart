import 'package:flutter/cupertino.dart';

class ChatSearch extends StatefulWidget {
  const ChatSearch({
    Key key,
    this.focusNode,
    this.onEditingComplete,
    this.onSubmitted,
    this.onChanged,
  }) : super(key: key);
  final FocusNode focusNode;
  final VoidCallback onEditingComplete;
  final ValueChanged<String> onSubmitted;
  final ValueChanged<String> onChanged;

  @override
  _ChatSearchState createState() => _ChatSearchState();
}

class _ChatSearchState extends State<ChatSearch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: CupertinoTextField(
        focusNode: widget.focusNode,
        maxLines: 1,
        onEditingComplete: widget.onEditingComplete,
        onSubmitted: widget.onSubmitted,
        onChanged: widget.onChanged,
        decoration: BoxDecoration(
          color: CupertinoColors.lightBackgroundGray,
          borderRadius: BorderRadius.circular(12.0),
        ),
        style: TextStyle(fontSize: 24.0, color: CupertinoColors.black),
        prefix: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Icon(CupertinoIcons.search),
        ),
        placeholder: "Search",
      ),
    );
  }
}
