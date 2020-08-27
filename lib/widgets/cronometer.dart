import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miapp/widgets/circle_containter.dart';

class Cronometer extends StatefulWidget {
  final double initTime, fontSize;

  const Cronometer({this.initTime = 0, this.fontSize});

  @override
  CronometerState createState() => CronometerState();
}

class CronometerState extends State<Cronometer> {
  double _time;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _time = widget.initTime;
  }

  @override
  void dispose() {
    super.dispose();
    _stop();
  }

  void _start() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer _) {
      setState(() {
        _time += 1;
      });
    });
  }

  void _stop() {
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: <Widget>[
          Text(
            _time.toString(),
            style: TextStyle(fontSize: widget.fontSize),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(
                onPressed: () => _start(),
                child: CircleContainer(
                  child: Icon(Icons.play_arrow),
                  size: 50,
                ),
              ),
              CupertinoButton(
                onPressed: () => _stop(),
                child: CircleContainer(
                  child: Icon(Icons.stop),
                  size: 50,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
