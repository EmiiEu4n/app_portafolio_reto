import 'package:app_portafolio_reto/screens/home/home_screen.dart'; // Importa la pantalla principal de la aplicación
import 'package:flutter/material.dart'; // Importa el paquete de Flutter para construir interfaces de usuario
import 'package:google_fonts/google_fonts.dart'; // Importa el paquete de Google Fonts para usar fuentes personalizadas

import 'constants.dart'; // Importa constantes definidas en otro archivo para ser usadas en la aplicación

void main() {
  runApp(const MyApp()); // Función principal que inicia la aplicación
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este widget es la raíz del proyecto. Toda la aplicación parte de aquí.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false, // Oculta la etiqueta de modo de depuración
      title: 'Flutter Demo', // Título de la aplicación

      // Se usa el tema oscuro para la aplicación
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor, // Define el color primario (importado de 'constants.dart')
        scaffoldBackgroundColor: bgColor, // Establece el color de fondo de toda la aplicación
        canvasColor: bgColor, // Define el color de fondo de widgets como los menús desplegables
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white) // Aplica la fuente Poppins y establece el color del texto a blanco
            .copyWith(
              bodyLarge: const TextStyle(color: bodyTextColor), // Aplica color personalizado para textos grandes
              bodyMedium: const TextStyle(color: bodyTextColor), // Aplica color personalizado para textos medianos
            ),
      ),
      home: const HomeScreen(), // Define la pantalla principal que se muestra al iniciar la aplicación
    );
  }
}
