import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(PFCBalance());

class PFCBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0a0e21),
        scaffoldBackgroundColor: Color(0xFF0a0e21),
      ),
      home: InputPage(),
    );
  }
}
