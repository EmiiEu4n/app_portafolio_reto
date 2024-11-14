import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Paquete para manejar archivos SVG

import '../../../constants.dart'; // Importa las constantes definidas como colores y padding
import 'area_info_text.dart'; // Archivo que contiene la información general (Área, Ciudad, Edad)
import 'coding.dart'; // Archivo para la información sobre lenguajes de programación
import 'knowledges.dart'; // Archivo sobre conocimientos adquiridos
import 'my_info.dart'; // Archivo con la información personal y profesional
import 'skills.dart'; // Archivo que muestra las habilidades con indicadores de progreso

// Clase SideMenu que crea el menú lateral
class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer( // Crea un menú lateral deslizante
      child: SafeArea( // Asegura que los elementos no interfieran con la barra de estado del dispositivo
        child: Column( // Contenedor en formato de columna
          children: [
            MyInfo(), // Información profesional desde el archivo my_info.dart
            Expanded(
              child: SingleChildScrollView( // Permite que el contenido del menú sea desplazable
                padding: EdgeInsets.all(defaultPadding), // Padding definido en constants.dart
                child: Column(
                  children: [
                    // Información general sobre la persona
                    AreaInfoText(
                      title: "Residencia",
                      text: "México",
                    ),
                    AreaInfoText(
                      title: "Ciudad",
                      text: "Mérida",
                    ),
                    AreaInfoText(
                      title: "Edad",
                      text: "22",
                    ),
                    Skills(), // Indicadores de progreso de habilidades (skills.dart)
                    SizedBox(
                      height: defaultPadding, // Espacio entre secciones
                    ),
                    Coding(), // Información sobre lenguajes de programación (coding.dart)
                    Knowledges(), // Información sobre conocimientos adquiridos (knowledges.dart)
                    Divider(), // Línea divisoria entre secciones
                    SizedBox(height: defaultPadding / 2), // Espacio
                    // Botón para descargar el CV
                    TextButton(
                      onPressed: () {}, // Acción al presionar el botón (vacío por ahora)
                      child: FittedBox( // Asegura que el contenido se ajuste en el espacio disponible
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV", // Texto del botón
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color), // Estilo de texto adaptado al tema actual
                            ),
                            SizedBox(width: defaultPadding / 2), // Espacio entre el texto y el icono
                            // Icono de descarga usando un archivo SVG
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    // Contenedor con los íconos de redes sociales
                    Container(
                      margin: const EdgeInsets.only(top: defaultPadding), // Margen superior
                      color: const Color(0xFF24242E), // Color de fondo del contenedor
                      child: Row(
                        children: [
                          const Spacer(), // Añade espacio flexible
                          IconButton(
                            onPressed: () {}, // Acción al presionar (vacío por ahora)
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"), // Icono de LinkedIn
                          ),
                          IconButton(
                            onPressed: () {}, // Acción al presionar (vacío por ahora)
                            icon: SvgPicture.asset("assets/icons/github.svg"), // Icono de GitHub
                          ),
                          IconButton(
                            onPressed: () {}, // Acción al presionar (vacío por ahora)
                            icon: SvgPicture.asset("assets/icons/twitter.svg"), // Icono de Twitter
                          ),
                          const Spacer(), // Añade espacio flexible
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
