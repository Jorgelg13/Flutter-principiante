import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:miapp/pages/chat_page.dart';
import 'package:miapp/pages/images_pages.dart';
import 'package:miapp/widgets/app_bar.dart';
import 'package:miapp/widgets/avatar.dart';
import 'package:miapp/widgets/cronometer.dart';
import '../widgets/navbar.dart';

class HomePage extends StatefulWidget {
  static final routeName = 'home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Navbar(
          items: [
            BottomMenuItem(iconPath: 'assets/icon/menu.svg', label: 'Menu'),
            BottomMenuItem(iconPath: 'assets/icon/home.svg', label: 'Home'),
            BottomMenuItem(
                iconPath: 'assets/icon/history.svg', label: 'History'),
            //BottomMenuItem(iconPath: 'assets/icon/camera.svg', label: 'Camera'),
            BottomMenuItem(iconPath: 'assets/icon/user.svg', label: 'Contacto')
          ],
        ),
        body: SafeArea(
            child: Container(
          width: double.infinity,
          color: Color(0xfff0f0f0f0),
          child: Column(
            children: <Widget>[
              MyAppBar(
                leftIcon: 'assets/icon/camera.svg',
                rightIcon: 'assets/icon/user.svg',
                onLeftClick: () {
                  Navigator.pushNamed(context, ImagePages.routeName,
                      arguments: ImagesPageArgs(
                          username: 'Jorge.laj', isActive: true));
                },
                onRightClick: () {
                  final route = MaterialPageRoute(
                      builder: (BuildContext _) => ChatPage(name: "Antonio"));
                  Navigator.push(context, route);
                },
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Avatar(),
                  SizedBox(height: 20),
                  Text("Bienvenido"),
                  Text('Jorge Laj'),
                  _isEnabled == true
                      ? Cronometer(
                          initTime: 90,
                          fontSize: 25,
                        )
                      : Container(),
                  SizedBox(
                    height: 20,
                  ),
                  CupertinoButton(
                    child: Text("enable: $_isEnabled"),
                    onPressed: () => {
                      setState(() {
                        _isEnabled = !_isEnabled;
                      })
                    },
                    color: Colors.blue,
                  ),
                ],
              ))
            ],
          ),
        )));
  }
}
