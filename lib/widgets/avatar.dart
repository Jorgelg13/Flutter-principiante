import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miapp/widgets/circle_containter.dart';
import 'package:image_picker/image_picker.dart';

class Avatar extends StatefulWidget {
  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  File _file = null;

  _pickImage() async {
    final File file = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _file = file;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Stack(
        children: <Widget>[
          _file == null
              ? SvgPicture.asset('assets/icon/avatar.svg')
              : ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.file(
                    _file,
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
          Positioned(
            right: 0,
            top: 0,
            child: CupertinoButton(
                padding: EdgeInsets.zero,
                child: CircleContainer(
                  child: Icon(Icons.edit),
                  size: 50,
                ),
                onPressed: () {
                  _pickImage();
                }),
          )
        ],
      ),
    );
  }
}
