import 'package:flutter/material.dart';

AppBar appBar( 
  {
   String title = '',
   Icon? icon,
  }) {

  return AppBar(
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
    leading: icon,
    title: Text(title),
  );
}