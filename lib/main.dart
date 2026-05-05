import 'package:flutter/material.dart';
import 'package:loginpage/login_page.dart';
void main() {
  runApp(const Test());
}

class Test extends StatelessWidget {
  const Test({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
