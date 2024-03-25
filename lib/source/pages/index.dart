import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva de Canchas'), 
      ),
      body: Center(
        child: Text('¡Bienvenido a La Canchita Picarona!'), 
      ),
    );
  }
}

//NOTA IMPORTANTE : Esto era una prueba