import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miapp/widgets/circle_containter.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Stack(
        children: <Widget>[
          SvgPicture.asset('assets/icon/avatar.svg'),
          Positioned(
            right: 0,
            top: 0,
            child: CircleContainer(
              child: Icon(Icons.edit),
              size: 50,
            ),
          )
        ],
      ),
    );
  }
}
