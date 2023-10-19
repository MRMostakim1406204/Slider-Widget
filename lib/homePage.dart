import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 double _currentSliderValue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: Slider(
          max: 100,
          min: 0,
          label: _currentSliderValue.round().toString(),
          divisions: 100,
          value: _currentSliderValue,
           onChanged: (double value) {
             setState(() {
               _currentSliderValue = value;
             });
           }),
      ),
    );
  }
}