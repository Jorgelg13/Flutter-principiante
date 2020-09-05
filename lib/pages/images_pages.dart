import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miapp/widgets/app_bar.dart';
import "package:cached_network_image/cached_network_image.dart";

class ImagesPageArgs {
  final String username;
  final bool isActive;

  ImagesPageArgs({@required this.username, @required this.isActive});
}

class ImagePages extends StatefulWidget {
  static final routeName = 'image';

  @override
  _ImagePagesState createState() => _ImagePagesState();
}

class _ImagePagesState extends State<ImagePages> {
  @override
  Widget build(BuildContext context) {
    final ImagesPageArgs args = ModalRoute.of(context).settings.arguments;

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
                child: Container(
                  height: 300,
                  width: 300,
                  color: Colors.blue,
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://img.freepik.com/vector-gratis/fondo-futurista-luces-neon_23-2148497520.jpg?size=626&ext=jpg&ga=GA1.2.1361746739.1598907492',
                    fit: BoxFit.fill,
                    placeholder: (_, __) {
                      return Center(
                        child: CupertinoActivityIndicator(
                          radius: 15,
                        ),
                      );
                    },
                  ),
                ),
              ))
            ],
          ),
        )),
      ),
    );
  }
}
