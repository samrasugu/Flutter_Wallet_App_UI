import 'package:flutter/material.dart';

class ButtonClick extends StatelessWidget {
  const ButtonClick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("You clicked!"),
      ),
    );
  }
}
