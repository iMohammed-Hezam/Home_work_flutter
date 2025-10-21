import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final double bmi;
  final bool isMale;
  final int age;

  const BMIResultScreen({
    super.key,
    required this.bmi,
    required this.isMale,
    required this.age,
  });

  String getResult() {
    if (bmi < 18.5) return 'Underweight';
    if (bmi >= 18.5 && bmi < 25) return 'Normal';
    if (bmi >= 25 && bmi < 30) return 'Overweight';
    return 'Obese';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0f041d),
      appBar: AppBar(
        backgroundColor: const Color(0xff0f041d),
        title: const Text('Your Result', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 300,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xff1a1034),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isMale ? 'Male' : 'Female',
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
              const SizedBox(height: 10),
              Text(
                'Age: $age',
                style: const TextStyle(color: Colors.grey, fontSize: 20),
              ),
              const SizedBox(height: 20),
              Text(
                'BMI: ${bmi.toStringAsFixed(1)}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                getResult(),
                style: const TextStyle(
                  color: Colors.pink,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
