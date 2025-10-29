import 'package:flutter/material.dart';
import 'package:home_work_flutter/hom_work3/model/global.dart';
import 'package:home_work_flutter/hom_work3/widget/calculate_button.dart';
import 'package:home_work_flutter/hom_work3/widget/gender_widgets/gender_selection.dart';
import 'package:home_work_flutter/hom_work3/widget/height_card.dart';
import 'package:home_work_flutter/hom_work3/widget/weight_age_widgets/weight_age_section.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  BimData inputData = BimData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            GenderSelection(inputData: inputData),
            HeightCard(inputData: inputData),
            WeightAgeSection(inputData: inputData),
            CalculateButton(inputData: inputData),
          ],
        ),
      ),
    );
  }
}
