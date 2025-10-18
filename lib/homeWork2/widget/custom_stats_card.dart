import 'package:flutter/material.dart';

class CustomStatsCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String value;
  final String label;
  const CustomStatsCard({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffffffff),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: SizedBox(
          height: 80,
          width: 60,
          child: Column(
            children: [
              Icon(icon, color: iconColor, size: 30),
              Text(
                value,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(label, style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
