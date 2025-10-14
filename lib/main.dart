import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            Container(height: 190, width: 588, color: Color(0xffe3f1fd)),
            Container(height: 10),
            Row(
              children: [
                Container(width: 30, height: 30, color: Color(0xffe0e0e0)),
                Container(width: 10),
                Container(height: 20, width: 360, color: Color(0xffe0e0e0)),
              ],
            ),
            Container(height: 10),
            Container(height: 2, color: Color(0xffe0e0e0)),
            Container(height: 20),
            Row(
              children: [
                Container(
                  color: Color(0xffe6f7e9),
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 50,
                        color: Color(0xffa5d6a7),
                      ),
                      Container(height: 10),
                      Container(
                        width: 200,
                        height: 50,
                        color: Color(0xffa5d6a7),
                      ),
                    ],
                  ),
                ),
                Container(width: 10),
                Row(
                  children: [
                    Container(width: 90, height: 110, color: Color(0xffffcc7f)),
                    Container(width: 10),
                    Container(width: 90, height: 110, color: Color(0xffffcc7f)),
                  ],
                ),
              ],
            ),
            Container(height: 20),
            Container(
              color: Color(0xfff4e4f5),
              child: Row(
                children: [
                  Container(width: 100, height: 100, color: Color(0xffe1bee8)),
                  Container(width: 10),
                  Container(
                    color: Color(0xffe1bee8),
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          height: 45,
                          color: Color(0xffcf94d9),
                        ),
                        Container(height: 10),
                        Container(
                          width: 100,
                          height: 45,
                          color: Color(0xffcf94d9),
                        ),
                      ],
                    ),
                  ),
                  Container(width: 20),
                  Container(width: 100, height: 100, color: Color(0xffe1bee8)),
                ],
              ),
            ),
            Container(height: 20),
            Row(
              children: [
                Container(width: 190, height: 60, color: Color(0xffb2dedb)),
                Container(width: 20),
                Container(width: 190, height: 60, color: Color(0xff80cbc4)),
              ],
            ),
            Container(height: 20),
            Container(height: 50, color: Color(0xffe0e0e0)),
          ],
        ),
      ),
    );
    
  }
}
