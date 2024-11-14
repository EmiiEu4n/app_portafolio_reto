import 'package:app_portafolio_reto/components/animated_counter.dart';
import 'package:app_portafolio_reto/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding), // Agrega espacio vertical en la parte superior e inferior
      child: Responsive.isMobileLarge(context) // Verifica si el dispositivo es grande (típico en móviles)
          ? const Column( // Si es un dispositivo móvil grande, organiza los elementos en columnas
              children: [
                Row( // Primer fila con dos elementos
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espacio entre los elementos
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 119, // Valor final para el contador (subscribers)
                        text: "K+", // Texto adicional para los miles
                      ),
                      label: "Subscribers", // Etiqueta que se muestra
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 40, // Valor final para el contador (videos)
                        text: "+", // Texto adicional para indicar más
                      ),
                      label: "Videos", // Etiqueta que se muestra
                    ),
                  ],
                ),
                SizedBox(height: defaultPadding), // Espacio entre las filas
                Row( // Segunda fila con dos elementos
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espacio entre los elementos
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 30, // Valor final para el contador (GitHub projects)
                        text: "+", // Texto adicional
                      ),
                      label: "GitHub Projects", // Etiqueta que se muestra
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 13, // Valor final para el contador (stars)
                        text: "K+", // Texto adicional para los miles
                      ),
                      label: "Stars", // Etiqueta que se muestra
                    ),
                  ],
                ),
              ],
            )
          : const Row( // Si no es un dispositivo móvil grande, organiza los elementos en una fila
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espacio entre los elementos
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: 119, // Valor para el contador (subscribers)
                    text: "K+", // Texto adicional para los miles
                  ),
                  label: "Subscribers", // Etiqueta que se muestra
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 40, // Valor para el contador (videos)
                    text: "+", // Texto adicional
                  ),
                  label: "Videos", // Etiqueta que se muestra
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 30, // Valor para el contador (GitHub projects)
                    text: "+", // Texto adicional
                  ),
                  label: "GitHub Projects", // Etiqueta que se muestra
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 13, // Valor para el contador (stars)
                    text: "K+", // Texto adicional para los miles
                  ),
                  label: "Stars", // Etiqueta que se muestra
                ),
              ],
            ),
    );
  }
}
