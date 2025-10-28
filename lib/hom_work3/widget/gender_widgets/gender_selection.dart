import 'package:flutter/material.dart';
import 'package:home_work_flutter/hom_work3/model/global.dart';
import 'package:home_work_flutter/hom_work3/widget/gender_widgets/gender_card.dart';

class GenderSelection extends StatefulWidget {
  final InputData inputData;

  const GenderSelection({super.key, required this.inputData});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              isMale = true;
              setState(() {});
              widget.inputData.isMale = isMale;
            },
            child: BuildGenderCard(
              isMale: true,
              color: isMale
                  ? Color.fromARGB(251, 14, 17, 59)
                  : Color(0xff090b25),
            ),
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: GestureDetector(
            onTap: () {
              isMale = false;
              setState(() {});
              widget.inputData.isMale = isMale;
            },
            child: BuildGenderCard(
              isMale: false,
              color: !isMale
                  ? Color.fromARGB(251, 14, 17, 59)
                  : Color(0xff090b25),
            ),
          ),
        ),
      ],
    );
  }
}
