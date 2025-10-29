import 'package:flutter/material.dart';
import 'package:home_work_flutter/hom_work3/model/global.dart';
import 'package:home_work_flutter/hom_work3/widget/weight_age_widgets/weight_age_card.dart';

class WeightCard extends StatefulWidget {
  final BimData inputData;
  const WeightCard({super.key, required this.inputData});

  @override
  State<WeightCard> createState() => _WeightCardState();
}

class _WeightCardState extends State<WeightCard> {
  @override
  Widget build(BuildContext context) {
    return WeightAgeCard(
      label: 'WEIGHT',
      value: widget.inputData.weight,
      onTapDecrement: () {
        setState(() {
          widget.inputData.weight--;
        });
      },
      onTapIncerement: () {
        setState(() {
          widget.inputData.weight++;
        });
      },
    );
  }
}
