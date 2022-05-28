import 'package:flutter/material.dart';

void main() {
  runApp(const Music());
}

class Music extends StatelessWidget {
  const Music({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Text(
              'haydar',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
