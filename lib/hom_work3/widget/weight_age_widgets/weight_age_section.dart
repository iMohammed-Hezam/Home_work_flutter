import 'package:flutter/material.dart';
import 'package:home_work_flutter/hom_work3/model/global.dart';
import 'package:home_work_flutter/hom_work3/widget/weight_age_widgets/age_card.dart';
import 'package:home_work_flutter/hom_work3/widget/weight_age_widgets/weight_age_card.dart';
import 'package:home_work_flutter/hom_work3/widget/weight_age_widgets/weight_card.dart';

class WeightAgeSection extends StatefulWidget {
  final BimData inputData;
  const WeightAgeSection({super.key, required this.inputData});

  @override
  State<WeightAgeSection> createState() => _WeightAgeSectionState();
}

class _WeightAgeSectionState extends State<WeightAgeSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Expanded(child: WeightCard(inputData: widget.inputData)),
        SizedBox(width: 20),
        Expanded(child: AgeCard(inputData: widget.inputData)),
      ],
    );
  }
}
