import 'package:flutter/material.dart';
import 'package:home_work_flutter/homeWork2/widget/Custom_fearures_card.dart';
import 'package:home_work_flutter/homeWork2/widget/bottom_action_buttons.dart';
import 'package:home_work_flutter/homeWork2/widget/custom_stats_card.dart';
import 'package:home_work_flutter/homeWork2/widget/welcome_header_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfffef7ff),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              SizedBox(height: 20),
              WelcomeHeaderCard(),
              Text(
                'Quick stats',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Row(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: CustomStatsCard(
                      icon: Icons.people,
                      iconColor: Color(0xff653cb9),
                      value: '1,234',
                      label: 'Users',
                    ),
                  ),
                  Expanded(
                    child: CustomStatsCard(
                      icon: Icons.star,
                      iconColor: Color(0xffff9601),
                      value: '4.8',
                      label: 'Rating',
                    ),
                  ),
                  Expanded(
                    child: CustomStatsCard(
                      icon: Icons.trending_up,
                      iconColor: Color(0xff2692ea),
                      value: '98%',
                      label: 'Success',
                    ),
                  ),
                ],
              ),
              Text(
                'Fearures',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              Column(
                children: [
                  CustomFearuresCard(
                    title: 'Fast Performance',
                    subtitle: 'Lightning fast app performance ',
                    leading: Icons.speed,
                    iconColor: Color(0xff673bbf),
                    bkiconeColor: Color(0xfff0ebf8),
                  ),

                  CustomFearuresCard(
                    title: 'Secure',
                    subtitle: 'Your data is safe with us',
                    leading: Icons.shield,
                    iconColor: Color(0xff2097f7),
                    bkiconeColor: Color(0xffe8f4fe),
                  ),
                  CustomFearuresCard(
                    title: 'Beautiful UI',
                    subtitle: 'Modern and clean design',
                    leading: Icons.color_lens,
                    iconColor: Color(0xffff9501),
                    bkiconeColor: Color(0xfffff4e5),
                  ),
                ],
              ),
              SizedBox(height: 75),
              Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: BottomActionButtons(
                      title: 'Settings',
                      color: Color(0xff2196f3),
                    ),
                  ),
                  Expanded(
                    child: BottomActionButtons(
                      title: 'Profile',
                      color: Color(0xffff9700),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
