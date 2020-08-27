import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPages extends StatefulWidget {
  SplashPages({Key key}) : super(key: key);

  @override
  _SplashPagesState createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3))
        .then((_) => {Navigator.pushReplacementNamed(context, 'home')});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(
          radius: 15,
        ),
      ),
    );
  }
}
