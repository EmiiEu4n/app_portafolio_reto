import 'package:app_portafolio_reto/constants.dart'; // Importa las constantes de color y otros valores
import 'package:app_portafolio_reto/responsive.dart'; // Importa la clase Responsive para el diseño responsivo
import 'package:flutter/material.dart'; // Importa el paquete de Flutter para interfaces de usuario

import 'components/side_menu.dart'; // Importa el menú lateral de la aplicación

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.children});
  final List<Widget> children; // Lista de widgets que se mostrarán en la pantalla principal

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Oculta el AppBar en pantallas de escritorio
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor, // Cambia el color del AppBar en pantallas pequeñas
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer(); // Abre el menú lateral cuando se presiona el icono
                  },
                  icon: Icon(Icons.menu), // Icono de menú en la barra superior
                ),
              ),
            ),
      drawer: SideMenu(), // Menú lateral que se muestra al presionar el ícono de menú en pantallas pequeñas
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding), // Padding en los lados
          constraints: const BoxConstraints(maxWidth: maxWidth), // Limita el ancho máximo de la pantalla a 1440px
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start, // Alinea los widgets en la parte superior
            children: [
              if (Responsive.isDesktop(context))
                // Si la pantalla es de escritorio, muestra el menú lateral
                Expanded(
                  flex: 2, // El menú lateral toma el 22% del ancho disponible
                  child: SideMenu(),
                ),
              SizedBox(width: defaultPadding), // Espacio entre el menú lateral y el contenido principal
              Expanded(
                flex: 7, // El contenido principal toma el 78% del ancho disponible
                child: SingleChildScrollView(
                  // Permite que el contenido principal sea desplazable si es necesario
                  child: Column(
                    children: [
                      ...children // Inserta los widgets hijos pasados a MainScreen
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
