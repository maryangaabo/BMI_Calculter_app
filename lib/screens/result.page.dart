import 'package:bmi_calculter_app/constant.dart';
import 'package:bmi_calculter_app/widgets/costam_buttom.dart';
import 'package:bmi_calculter_app/widgets/reviced.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  String getResultText() {
    if (result < 20) {
      return 'You are thin 😔 ';
    } else if (result >= 20 && result < 30) {
      return 'You are normal ☺️';
    } else if (result >= 30 && result < 40) {
      return 'You are overweight 😃';
    } else {
      return 'You are obese';
    }
  }

  final double result;
  const ResultPage({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Result Calculator",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Kactive_color,
      ),
      backgroundColor: Kactive_color,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Your result",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Revisible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Text(
                        result.toStringAsFixed(1),
                        style: TextStyle(
                          fontSize: 60,
                          color: Colors.grey.shade300,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Text(
                        getResultText(),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Custombutto(
              onpressed: () {
                Navigator.pop(context);
              },
              title: "Recalculate",
            )
          ],
        ),
      ),
    );
  }
}
