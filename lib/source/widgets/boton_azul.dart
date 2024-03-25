import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;

  const BotonAzul({
    required this.texto,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
            Colors.blue.shade900),
        foregroundColor: MaterialStateProperty.all(
            Colors.white),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12)),
        textStyle: MaterialStateProperty.all(TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        )),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              50),
        )),
      ),
      child: Text(texto),
    );
  }
}
