import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String title;

  IconContent({required this.iconData, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.grey, fontSize: 24),
        )
      ],
    );
  }
}
