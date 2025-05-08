import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final Color? color;
  final Widget child;
  const MyBox({
    super.key,
    required this.color,
    required this.child, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(9.0),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}