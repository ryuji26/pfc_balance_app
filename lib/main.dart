import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(PFCBalance());

class PFCBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF48b0c7),
        scaffoldBackgroundColor: Color(0xFFf7e3da),
        accentColor: Color(0xFF17517e),
      ),
      home: InputPage(),
    );
  }
}
