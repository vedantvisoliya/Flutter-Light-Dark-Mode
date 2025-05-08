import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color? color;
  final void Function()? onTap;
  const MyButton({
    super.key,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(9.0),
        ),
        child: Center(
          child: const Text("TAP", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}