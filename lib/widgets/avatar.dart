import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miproyect01/widgets/circle_Container.dart';


class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 200,
        //color: Color(0xffeeeeee),
        child: Stack(
          children: <Widget>[
            // Container(color:Colors.red,width: 120,height: 120,),
            // Container(color:Colors.blue,width: 80,height: 80,),
           SvgPicture.network('https://www.flaticon.com/svg/vstatic/svg/1177/1177568.svg'),
            Positioned(
                child:CircleContainer(
                 child: Icon(Icons.edit),
                  width: 40,
                  height: 40,
                    // decoration: BoxDecoration(
                    //     color: Color(0xffcccccc),
                    //     shape:BoxShape.circle
                    //),
                ),right: 0,top:0)
          ]
        ));
  }
}
