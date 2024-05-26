import 'package:flutter/material.dart';

AppBar appBar(){
  return AppBar(
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
    leading: const Icon(Icons.tag),
    title: const Text('App Numérico'),
  );
}