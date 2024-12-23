import 'package:bmi_calculter_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custombutto extends StatelessWidget {
  final Function() onpressed;
  final String? title;
  const Custombutto({super.key, required this.onpressed, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      color: Kbuttoncontinea_rcolor,
      child: MaterialButton(
        onPressed: onpressed,
        child: Text(
          title ?? "calculter ",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 30),
        ),
      ),
    );
  }
}
