import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int numberOfContainers = 7;
  @override
  Widget build(BuildContext context) {
    double containerHeight =
        MediaQuery.of(context).size.height / numberOfContainers;
    double phoneWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          XylophoneCommonWidget(
              containerHeight: containerHeight,
              phoneWidth: phoneWidth,
              soundnumber: 1),
          XylophoneCommonWidget(
              containerHeight: containerHeight,
              phoneWidth: phoneWidth,
              soundnumber: 2),
          XylophoneCommonWidget(
              containerHeight: containerHeight,
              phoneWidth: phoneWidth,
              soundnumber: 3),
          XylophoneCommonWidget(
              containerHeight: containerHeight,
              phoneWidth: phoneWidth,
              soundnumber: 4),
          XylophoneCommonWidget(
              containerHeight: containerHeight,
              phoneWidth: phoneWidth,
              soundnumber: 5),
          XylophoneCommonWidget(
              containerHeight: containerHeight,
              phoneWidth: phoneWidth,
              soundnumber: 6),
          XylophoneCommonWidget(
              containerHeight: containerHeight,
              phoneWidth: phoneWidth,
              soundnumber: 7),
        ],
      ),
    );
  }
}

class XylophoneCommonWidget extends StatelessWidget {
  XylophoneCommonWidget({
    super.key,
    required this.containerHeight,
    required this.phoneWidth,
    required this.soundnumber,
  });

  final double containerHeight;
  final double phoneWidth;
  final int soundnumber;
  List listOfColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          color: listOfColors[soundnumber - 1],
          height: containerHeight,
          width: phoneWidth),
      onTap: () {
        playSound(soundnumber);
      },
    );
  }

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('assets_note$soundNumber.wav'));
  }
}
