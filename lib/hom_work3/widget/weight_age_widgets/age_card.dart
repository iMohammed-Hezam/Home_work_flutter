import 'package:flutter/material.dart';
import 'package:home_work_flutter/hom_work3/model/global.dart';
import 'package:home_work_flutter/hom_work3/widget/weight_age_widgets/weight_age_card.dart';

class AgeCard extends StatefulWidget {
  final BimData inputData;
  const AgeCard({super.key, required this.inputData});

  @override
  State<AgeCard> createState() => _AgeCardState();
}

class _AgeCardState extends State<AgeCard> {
  @override
  Widget build(BuildContext context) {
    return WeightAgeCard(
      label: 'Age',
      value: widget.inputData.age,
      onTapDecrement: () {
        setState(() {
          widget.inputData.age--;
        });
      },
      onTapIncerement: () {
        setState(() {
          widget.inputData.age++;
        });
      },
    );
  }
}
