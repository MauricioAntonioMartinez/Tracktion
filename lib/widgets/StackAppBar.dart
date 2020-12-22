import 'package:flutter/material.dart';

class StackAppBar extends StatelessWidget {
  const StackAppBar({Key key, @required this.actions}) : super(key: key);
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          actions: actions,
          backgroundColor: Colors.transparent,
          floating: true,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}