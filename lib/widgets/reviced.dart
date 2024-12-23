import 'package:bmi_calculter_app/constant.dart';
import 'package:flutter/material.dart';

class Revisible extends StatelessWidget {
  final Widget? child;
  final bool selected;
  final Function()? onpressed;

  Revisible({this.child, this.selected = false, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        child: child,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: selected == true ? Kactive_color : Kactivecardcolor,
        ),
      ),
    );
  }
}
