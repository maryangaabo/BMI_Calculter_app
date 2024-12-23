import 'dart:math';

import 'package:bmi_calculter_app/constant.dart';
import 'package:bmi_calculter_app/screens/result.page.dart';
import 'package:bmi_calculter_app/widgets/IconContent.dart';
import 'package:bmi_calculter_app/widgets/costam_buttom.dart';
import 'package:bmi_calculter_app/widgets/reviced.dart';
import 'package:bmi_calculter_app/widgets/roundbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gende { male, fmale }

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double height = 180;
  int age = 20;
  double weight = 60;
  Gende slectedgender = Gende.male;

  void _gotoresultscren() {
    double result = weight / pow(height / 100, 2);
    print(result);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ResultPage(
                  result: result,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Kactive_color,
        ),
        backgroundColor: Kactive_color,
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Revisible(
                    selected: slectedgender == Gende.male ? true : false,
                    onpressed: () {
                      setState(() {
                        slectedgender = Gende.male;
                      });
                    },
                    child: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      title: 'Male', //
                    ),
                  ),
                ),
                Expanded(
                  child: Revisible(
                    selected: slectedgender == Gende.fmale ? true : false,
                    onpressed: () {
                      setState(() {
                        slectedgender = Gende.fmale;
                      });
                    },
                    child: IconContent(
                      iconData: FontAwesomeIcons.venus,
                      title: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Revisible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toInt().toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 30),
                      ),
                      Text(
                        "cm ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                    //annyyanus functoin
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                        activeTickMarkColor: Colors.white,
                        inactiveTickMarkColor: Colors.grey,
                        thumbColor: Kbuttoncontinea_rcolor,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 16)),
                    child: Slider(
                      value: height,
                      min: 10,
                      max: 310,
                      onChanged: (double newvalue) {
                        height = newvalue;
                        print(height);
                        setState(() {});
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Revisible(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            weight.toInt().toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 30),
                          ),
                          Text(
                            "kg ",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                        //annyyanus functoin
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          rounbutton(
                            iconData: Icons.remove,
                            onpressed: () {
                              setState(() {
                                weight--;
                              });
                              print(weight);
                            },
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          rounbutton(
                            iconData: Icons.add,
                            onpressed: () {
                              setState(() {
                                weight++;
                              });
                              print(weight);
                            },
                          ),
                        ],
                      )
                    ],
                  )),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Revisible(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AGE",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  "$age",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 30),
                                ),
                                Text(
                                  "yrs ",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                              //annyyanus functoin
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                rounbutton(
                                  iconData: Icons.remove,
                                  onpressed: () {
                                    setState(() {
                                      age--;
                                    });
                                    print(age);
                                  },
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                rounbutton(
                                  iconData: Icons.add,
                                  onpressed: () {
                                    setState(() {
                                      age++;
                                    });
                                    print(age);
                                  },
                                ),
                              ],
                            )
                          ],
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Custombutto(onpressed: () => _gotoresultscren())
        ]));
  }
}
