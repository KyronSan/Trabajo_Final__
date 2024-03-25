import 'package:flutter/material.dart';
import 'source/pages/primera_pagina.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrimeraPagina(), 
    );
  }
}
