import 'package:flutter/material.dart';
import 'package:radio/ui_visuals/tab_bars.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Radio dalam',
    debugShowCheckedModeBanner: false,
    home: TabBars(),
  );
  }
}

