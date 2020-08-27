import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomMenuItem {
  final String iconPath, label;

  BottomMenuItem({@required this.iconPath, @required this.label});
}

class Navbar extends StatelessWidget {
  final List<BottomMenuItem> items;

  Navbar({@required this.items}) : assert(items != null && items.length > 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff0f0),
      padding: EdgeInsets.all(10),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (index) {
          final BottomMenuItem menuItem = items[index];
          return Expanded(
              child: Container(
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () => {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SvgPicture.asset(
                    menuItem.iconPath,
                    width: 35,
                  ),
                  SizedBox(height: 3),
                  Text(
                    menuItem.label,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  )
                ],
              ),
            ),
          ));
        }),
      )),
    );
  }
}
