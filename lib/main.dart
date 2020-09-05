import 'package:flutter/material.dart';
import 'package:miapp/pages/images_pages.dart';
import 'package:miapp/pages/post_page.dart';
import 'package:miapp/pages/splash_pages.dart';
import 'pages/home_page.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      color: Colors.white,
      home: SplashPages(),
      debugShowCheckedModeBanner: false,
      routes: {
        ImagePages.routeName: (BuildContext context) => ImagePages(),
        HomePage.routeName: (BuildContext context) => HomePage(),
        PostPage.routeName: (BuildContext context) => PostPage(),
      },
    );
  }
}
