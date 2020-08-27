import 'package:flutter/material.dart';
import 'package:miapp/widgets/app_bar.dart';

class ChatPage extends StatefulWidget {
  final String name;
  ChatPage({Key key, @required this.name})
      : assert(name != null),
        super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
            child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: <Widget>[
              MyAppBar(
                leftIcon: 'assets/icon/camera.svg',
                rightIcon: 'assets/icon/user.svg',
                onLeftClick: () {
                  Navigator.pop(context);
                },
                onRightClick: () {},
              ),
              Expanded(
                  child: Center(
                child: Text(widget.name),
              ))
            ],
          ),
        )),
      ),
    );
  }
}
