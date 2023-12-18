import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  final FontWeight fontWeight;

  AppText({Key? key,
    this.size = 16,
    required this.text,
    required this.fontWeight,
    this.color = Colors.black54
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: fontWeight
      ),
    );
  }
}
