import 'package:flutter/material.dart';
import 'package:home_work_flutter/hom_work3/model/global.dart';

class HeightCard extends StatefulWidget {
  final BimData inputData;

  const HeightCard({super.key, required this.inputData});

  @override
  State<HeightCard> createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                '${widget.inputData.height.round()}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('cm', style: TextStyle(color: Colors.grey, fontSize: 25)),
            ],
          ),
          SizedBox(height: 10),
          Slider(
            value: widget.inputData.height,
            min: 10,
            max: 300,
            activeColor: Colors.pink,
            onChanged: (value) {
              widget.inputData.height = value;

              setState(() {});
            },
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
