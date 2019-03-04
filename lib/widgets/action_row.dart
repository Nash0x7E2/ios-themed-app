import 'package:flutter/cupertino.dart';

class ActionRow extends StatelessWidget {
  const ActionRow({Key key, @required this.widgets}) : super(key: key);
  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: widgets,
      ),
    );
  }
}
