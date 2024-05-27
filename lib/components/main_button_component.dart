import 'package:flutter/material.dart';

ElevatedButton mainButton(
  {
    String buttonText = '',
    Function()? buttonFunction,
    Color buttonColor = const Color(0xFF2c3e50),
    Color textButtonColor = const Color.fromARGB(255, 255, 255, 255),
    double horizontalPadding = 25,
  }
) {
  return ElevatedButton(
    onPressed: buttonFunction, 
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(buttonColor),
      foregroundColor: MaterialStateProperty.all(textButtonColor),
      padding: MaterialStatePropertyAll<EdgeInsetsGeometry>
      (
        EdgeInsets.symmetric
        (
          horizontal: horizontalPadding,
          vertical: 5
        ),
      ),
      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )
      )
    ),
    child: Text(
      buttonText, 
      style: TextStyle(
        fontSize: 16
      ),),
  );
}