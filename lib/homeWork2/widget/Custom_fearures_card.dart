import 'package:flutter/material.dart';

class CustomFearuresCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData leading;
  final Color iconColor;
  final Color bkiconeColor;

  const CustomFearuresCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leading,
    required this.iconColor,
    required this.bkiconeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffffffff),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: bkiconeColor,
          ),
          padding: EdgeInsets.all(10),

          child: Icon(leading, color: iconColor),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.grey)),
        trailing: Icon(Icons.navigate_next_sharp, size: 32, color: Colors.grey),
      ),
    );
  }
}
