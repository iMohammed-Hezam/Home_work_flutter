import 'dart:math';

import 'package:flutter/material.dart';
import 'package:home_work_flutter/hom_work3/bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool iaMale = true;
  double height = 174;
  int weight = 60;
  int age = 29;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff04061d),
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'BMI CALCLATOR',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          backgroundColor: Color(0xff04061d),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 30,
            children: [
              Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          iaMale = true;
                        });
                      },
                      child: BuildGenderCard(isMale: true, isSelect: iaMale),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          iaMale = false;
                        });
                      },
                      child: BuildGenderCard(isMale: false, isSelect: !iaMale),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff171730),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40),

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'HEIGHT',
                      style: TextStyle(color: Color(0xff868895), fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(color: Colors.grey, fontSize: 25),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Slider(
                      value: height,
                      min: 10,
                      max: 300,
                      activeColor: Colors.pink,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                    SizedBox(height: 25),
                  ],
                ),
              ),
              Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff171730),
                      ),
                      padding: EdgeInsets.all(20),

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0XFF8e909b),
                            ),
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.w800,
                              color: Color(0xfffefffd),
                            ),
                          ),
                          Row(
                            spacing: 5,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xff4a4e5f),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    width: 50,
                                    height: 70,
                                    child: Icon(
                                      Icons.remove,
                                      size: 40,
                                      color: Color(0xfffffffd),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xff4a4e5f),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    width: 50,
                                    height: 70,
                                    child: Icon(
                                      Icons.add,
                                      size: 40,
                                      color: Color(0xfffffffd),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff171730),
                      ),
                      padding: EdgeInsets.all(20),

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0XFF8e909b),
                            ),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.w800,
                              color: Color(0xfffefffd),
                            ),
                          ),
                          Row(
                            spacing: 5,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xff4a4e5f),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    width: 50,
                                    height: 70,
                                    child: Icon(
                                      Icons.remove,
                                      size: 40,
                                      color: Color(0xfffffffd),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xff4a4e5f),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    width: 50,
                                    height: 70,
                                    child: Icon(
                                      Icons.add,
                                      size: 40,
                                      color: Color(0xfffffffd),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  double bmi = weight / pow(height / 100, 2);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BMIResultScreen(bmi: bmi, isMale: iaMale, age: age),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: double.infinity,
                  color: Color(0XFFee0c54),
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xfffff7ff),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildGenderCard extends StatelessWidget {
  const BuildGenderCard({
    super.key,
    required this.isMale,
    required this.isSelect,
  });

  final bool isMale;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isSelect ? Colors.pinkAccent : Color(0xff090b25),
      ),
      padding: EdgeInsets.all(20),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isMale ? Icons.male : Icons.female,
            color: Color(0xffffffff),
            size: 120,
          ),
          Text(
            isMale ? 'Male' : 'Femal',
            style: TextStyle(color: Color(0xff91929a), fontSize: 25),
          ),
        ],
      ),
    );
  }
}
