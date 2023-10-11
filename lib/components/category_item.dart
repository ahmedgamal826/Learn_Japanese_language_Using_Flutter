import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text, this.color, this.onTap});

  String? text;
  Color? color;
  VoidCallback? onTap; // void Function();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        height: 70,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
