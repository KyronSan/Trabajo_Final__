import 'package:flutter/material.dart';

class RectanguloCeleste extends StatelessWidget {
  final Widget? child;

  const RectanguloCeleste({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: child,
    );
  }
}
