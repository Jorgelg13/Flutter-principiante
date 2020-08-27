import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatelessWidget {
  final String leftIcon, rightIcon;
  final VoidCallback onLeftClick, onRightClick;
  MyAppBar(
      {Key key,
      @required this.leftIcon,
      @required this.rightIcon,
      this.onLeftClick,
      this.onRightClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CupertinoButton(
          padding: EdgeInsets.all(15),
          child: SvgPicture.asset(
            leftIcon,
            height: 30,
            color: Colors.black,
          ),
          onPressed: onLeftClick,
        ),
        Text(
          "Logo",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        CupertinoButton(
          padding: EdgeInsets.all(0),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: SvgPicture.asset(
                  rightIcon,
                  height: 30,
                  color: Colors.black,
                ),
              ),
              Positioned(
                right: 14,
                top: 7,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                ),
              )
            ],
          ),
          onPressed: onRightClick,
        )
      ],
    ));
  }
}
