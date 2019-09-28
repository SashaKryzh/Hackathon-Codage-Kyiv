import 'package:flutter/material.dart';

class HorizontalPadding extends StatelessWidget {
  final Widget child;

  HorizontalPadding({this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17),
      child: child,
    );
  }
}
