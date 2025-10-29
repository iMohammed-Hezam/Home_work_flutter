import 'dart:math';

import 'package:flutter/material.dart';
import 'package:home_work_flutter/hom_work3/model/global.dart';
import 'package:home_work_flutter/hom_work3/screen/bmi_result_screen.dart';

class CalculateButton extends StatefulWidget {
  final BimData inputData;

  const CalculateButton({super.key, required this.inputData});

  @override
  State<CalculateButton> createState() => _CalculateButtonState();
}

class _CalculateButtonState extends State<CalculateButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BMIResultScreen(inputData: widget.inputData),
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
    );
  }
}
