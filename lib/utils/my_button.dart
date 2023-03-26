import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String name;
  VoidCallback onPressed;
  MyButton({super.key, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: name == 'Cancel' ? Colors.red[300] : Colors.blue[300],
      child: Text(
        name,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
