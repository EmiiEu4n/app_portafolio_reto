import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23, // Mantiene una relación de aspecto de 1.23
      child: Container(
        color: const Color(0xFF242430), // Fondo oscuro para el contenedor
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround, // Este comentario no afecta
          children: [
            const Spacer(flex: 2), // Añade espacio flexible en la parte superior
            const CircleAvatar(
              radius: 50, // Tamaño del avatar circular
              backgroundImage: AssetImage('assets/images/img.JPG'), // Imagen del usuario
            ),
            Spacer(), // Añade espacio flexible
            Text(
              "Gaspar E. Euan Puc", // Nombre del usuario
              style: Theme.of(context).textTheme.titleSmall, // Estilo de texto basado en el tema actual
            ),
            const Text(
              "Flutter developer & founder of \n the flutter way.", // Título y descripción
              textAlign: TextAlign.center, // Centra el texto
              style: TextStyle(
                fontWeight: FontWeight.w200, // Fuente ligera
                height: 1.5, // Espaciado entre líneas
              ),
            ),
            const Spacer(flex: 2), // Espacio flexible en la parte inferior
          ],
        ),
      ),
    );
  }
}
