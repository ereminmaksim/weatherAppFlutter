import 'package:flutter/material.dart';
import 'package:flutter_cubit/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  bool? isIcon;

  AppButton(
      {Key? key,
      this.text = "1",
      this.icon,
      this.isIcon = false,
      required this.color,
      required this.backgroundColor,
      required this.size,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(5),
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.0),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor),
      child: isIcon == false
          ? Center(
              child: AppText(
                  text: text!,
                  fontWeight: FontWeight.w400,
                  color: color))
          : Center(
              child: Icon(icon, color: color),
            ),
    );
  }
}
