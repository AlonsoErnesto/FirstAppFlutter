import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miproyect01/widgets/circle_Container.dart';
import 'package:after_layout/after_layout.dart';

class Cronometer extends StatefulWidget {
  final double initTime, fontSize;

  const Cronometer({Key key, this.initTime = 0, this.fontSize})
      : super(key: key);
  @override
  CronometerState createState() => CronometerState();
}

class CronometerState extends State<Cronometer> with AfterLayoutMixin {
  double _time;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _time = widget.initTime;
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant Cronometer oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("old fontSize ${oldWidget.fontSize}");
    print("new fontSize ${widget.fontSize}");
  }

  @override
  void afterFirstLayout(BuildContext context) {
    // showDialog(
    //     context: this.context,
    //     builder: (BuildContext context) {
    //       return AlertDialog(
    //         title: Text("afterFirstLayout"),
    //       );
    //     });
  }

  @override
  void dispose() {
    print("dispose");
    _stop();
    super.dispose();
  }

  void _start() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer _) {
      setState(() {
        _time += 1;
      });
    });
  }

  void _stop() {
    if (_timer != null) {
      _timer.cancel();
    }
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Text(
          _time.toString(),
          style: TextStyle(fontSize: widget.fontSize),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CupertinoButton(
              child: CircleContainer(
                  child: Icon(Icons.play_arrow), width: 55, height: 55),
              onPressed: _start,
            ),
            CupertinoButton(
              child: CircleContainer(
                  child: Icon(Icons.stop), width: 55, height: 55),
              onPressed: _stop,
            )
          ],
        )
      ],
    ));
  }
}
