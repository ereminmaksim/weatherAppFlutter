import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  double size;
  final Object text;
  final Color color;

  AppLargeText({
    Key? key,
    this.size = 30.0,
    required this.text,
    this.color = Colors.black,
    }) : assert(text is String || text is int), // Assert to ensure text is String or int
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
