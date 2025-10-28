import 'package:flutter/material.dart';

class BuildGenderCard extends StatelessWidget {
  const BuildGenderCard({super.key, required this.isMale, required this.color});

  final bool isMale;
final  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:color,
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
