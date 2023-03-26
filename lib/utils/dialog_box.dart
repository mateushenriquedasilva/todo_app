// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo_app/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onCancel;
  VoidCallback onSave;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue,
      content: Container(
        height: 120,
        // ignore: prefer_const_literals_to_create_immutables
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          // get user input
          TextField(
            controller: controller,
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 1, //<-- SEE HERE
                    color: Colors.white,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 1, //<-- SEE HERE
                    color: Colors.white,
                  ),
                ),
                hintText: 'Create new task',
                hintStyle: TextStyle(color: Colors.white)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // save
              MyButton(name: 'Save', onPressed: onSave),
              SizedBox(
                width: 10,
              ),
              MyButton(name: 'Cancel', onPressed: onCancel)
              // cancel
            ],
          )

          // button sabe -> cancel
        ]),
      ),
    );
  }
}
