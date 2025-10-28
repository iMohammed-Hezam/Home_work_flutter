import 'package:flutter/material.dart';

class WeightAgeCard extends StatefulWidget {
  final String label;

  final int value;
  final void Function()? onTapIncerement;
  final void Function()? onTapDecrement;
  const WeightAgeCard({
    super.key,
    required this.label,
    this.onTapIncerement,

    this.onTapDecrement,
    required this.value,
  });

  @override
  State<WeightAgeCard> createState() => _WeightAgeCardState();
}

class _WeightAgeCardState extends State<WeightAgeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff171730),
      ),
      padding: EdgeInsets.all(20),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.label,
            style: TextStyle(fontSize: 20, color: Color(0XFF8e909b)),
          ),
          Text(
            '${widget.value}',
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
                child: RoundButton(
                  onTap: widget.onTapDecrement,
                  icon: Icons.remove,
                ),
              ),

              Expanded(
                child: RoundButton(
                  onTap: widget.onTapIncerement,
                  icon: Icons.add,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  const RoundButton({super.key, required this.onTap, required this.icon});

  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff4a4e5f),
          borderRadius: BorderRadius.circular(50),
        ),
        width: 50,
        height: 70,
        child: Icon(icon, size: 40, color: Color(0xfffffffd)),
      ),
    );
  }
}
