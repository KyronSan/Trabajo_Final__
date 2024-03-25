import 'package:flutter/material.dart';
import '../widgets/fondo_futbol.dart';
import '../widgets/boton_azul.dart';
import '../widgets/cancha_futbol_1.dart';
import '../widgets/cancha_futbol_2.dart';
import 'segunda_pagina.dart';
import 'tercera_pagina.dart';

class PrimeraPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App | La Canchita Picarona'),
      ),
      body: Stack(
        children: [
          FondoFutbol(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BotonAzul(
                      texto: 'Iniciar Sesión',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SegundaPagina()),
                        );
                      },
                    ),
                    SizedBox(width: 20),
                    BotonAzul(
                      texto: 'Registrarse',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TerceraPagina()),
                        );
                      },
                    ),
                    SizedBox(width: 20),
                    BotonAzul(
                      texto: 'Reseñas',
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 300,
                          height: 200,
                          child: CanchaFutbol1(),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          'Reserva una cancha con nuestra app, y diviértete en grande!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Para todo tipo de evento:\n- Futbol / Voley\n- Matrimonios\n- Fiestas\n- Promociones\n- Y mucho más',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 250,
                          height: 200,
                          child: CanchaFutbol2(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
