import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  final double height;
  final Widget child;

  HeaderImage({this.height, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/header.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: child,
      // ),
    );
  }
}