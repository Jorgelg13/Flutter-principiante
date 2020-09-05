import 'package:flutter/material.dart';
import 'package:miapp/widgets/app_bar.dart';
import '../utils/fake_list.dart';

class PostPage extends StatefulWidget {
  static final routeName = "post";

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  List<String> _data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              onRightClick: () {
                setState(() {
                  _data.add("item ${_data.length}");
                });
              },
            ),
            Expanded(
                child: ListView.builder(
              itemBuilder: (BuildContext context, int position) {
                final String item = _data[position];
                return ListTile(
                  title: Text(item),
                  onTap: () {},
                  onLongPress: () {
                    setState(() {
                      _data.removeAt(position);
                    });
                  },
                  leading: Icon(Icons.list),
                  subtitle: Text(DateTime.now().toString()),
                );
              },
              itemCount: _data.length,
            ))
          ],
        ),
      )),
    );
  }
}
