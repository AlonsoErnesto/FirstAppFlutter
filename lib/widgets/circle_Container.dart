import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  final Widget child;
  final double height, width;

  CircleContainer(
      {@required this.child, @required this.height, @required this.width}
      )
      : assert(height != null),
        assert(width != null && width >= 0),
        assert(child != null && width >= 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, //double.infinity
      height: height,
      child: Center(
        child: this.child,
      ),
      decoration: BoxDecoration(
          color: Colors.lightBlue[50],
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black45, blurRadius: 10, offset: Offset(5, 5)),
          ]),
    );
  }
}
