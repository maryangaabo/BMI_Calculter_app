import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rounbutton extends StatelessWidget {
  final IconData iconData;
  final Function()? onpressed;

  const rounbutton({required this.iconData, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
      child: MaterialButton(
        onPressed: onpressed,
        child: Center(
          child: Icon(
            iconData,
            size: 25,
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(67)),
        color: Colors.grey,
      ),
    );
  }
}
