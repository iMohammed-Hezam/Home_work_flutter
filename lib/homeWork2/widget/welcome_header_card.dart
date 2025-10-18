import 'package:flutter/material.dart';

class WelcomeHeaderCard extends StatelessWidget {
  const WelcomeHeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xff8160b9),
      ),
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 5,
            children: [
              Text(
                'Hello!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text('👋', style: TextStyle(fontSize: 28)),
            ],
          ),
          Text(
            'Try your best to build this ui',
            style: TextStyle(fontSize: 17, color: Colors.white),
          ),

          Container(
            width: 400,
            padding: EdgeInsets.symmetric(vertical: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xff663bb9),
            ),

            child: Center(
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
