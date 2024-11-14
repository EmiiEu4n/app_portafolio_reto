import 'package:flutter/material.dart'; // Importa el paquete de Flutter para construir interfaces de usuario

// Clase Responsive para gestionar el diseño responsivo basado en el tamaño de la pantalla
class Responsive extends StatelessWidget {
  final Widget mobile; // Widget para el diseño en dispositivos móviles pequeños
  final Widget? mobileLarge; // Widget opcional para el diseño en dispositivos móviles grandes
  final Widget? tablet; // Widget opcional para el diseño en tabletas
  final Widget desktop; // Widget para el diseño en dispositivos de escritorio

  const Responsive({
    Key? key,
    required this.mobile, // El widget mobile es obligatorio
    this.tablet, // El widget tablet es opcional
    required this.desktop, // El widget desktop es obligatorio
    this.mobileLarge, // El widget mobileLarge es opcional
  }) : super(key: key);

  // Método para verificar si el dispositivo es móvil pequeño (ancho <= 500px)
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

  // Método para verificar si el dispositivo es móvil grande (ancho <= 700px)
  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 700;

  // Método para verificar si el dispositivo es una tableta (ancho < 1024px)
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024;

  // Método para verificar si el dispositivo es de escritorio (ancho >= 1024px)
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size; // Obtiene el tamaño de la pantalla

    // Devuelve el widget correspondiente según el tamaño de la pantalla
    if (_size.width >= 1024) {
      return desktop; // Si el ancho es >= 1024px, muestra el diseño de escritorio
    } else if (_size.width >= 700 && tablet != null) {
      return tablet!; // Si el ancho es >= 700px y hay un widget de tablet, muestra el diseño de tablet
    } else if (_size.width >= 500 && mobileLarge != null) {
      return mobileLarge!; // Si el ancho es >= 500px y hay un widget de móvil grande, muestra ese diseño
    } else {
      return mobile; // En otros casos, muestra el diseño de móvil pequeño
    }
  }
}
