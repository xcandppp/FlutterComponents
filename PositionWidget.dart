import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PositionWidget extends StatelessWidget {
  final String name;
  final double x;
  final double y;
  final double lat;
  final double lon;
  final String address;
  final String isLive;
  final String content;
  final VoidCallback onPressed;
  final String color;

  const PositionWidget(
      {this.name,
      this.x,
      this.y,
      this.lat,
      this.lon,
      this.content,
      this.address,
      this.isLive,
      @required this.onPressed,
      this.color});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      left: x - 2,
      top: y+40,
      child: Container(
        width: 7,
        height: 7,
        child: new FloatingActionButton(
          onPressed: onPressed,
          child: new ConstrainedBox(
            constraints: new BoxConstraints.expand(),
            child: new Image(
                image: AssetImage("images/animation_" + color + ".png"),
                fit: BoxFit.cover,
                gaplessPlayback: true),
          ),
        ),
      ),
    );
  }
}
