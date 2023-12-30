import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  final Object text;
  final Color color;
  final FontWeight fontWeight;

  AppText({Key? key,
    this.size = 16,
    required this.text,
    required this.fontWeight,
    this.color = Colors.black54
  }): assert(text is String || text is int), // Assert to ensure text is String or int
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: fontWeight
      ),
    );
  }
}
