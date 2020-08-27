import 'package:flutter/material.dart';
import 'package:miapp/widgets/app_bar.dart';

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
                child: Text(
                    "el usuario ${args.username} esta activo: ${args.isActive}"),
              ))
            ],
          ),
        )),
      ),
    );
  }
}
