import 'package:flutter/material.dart';


import 'package:xylophone/home_page.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:HomePage() ,);
  }
}