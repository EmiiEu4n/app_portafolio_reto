import 'package:app_portafolio_reto/constants.dart';
import 'package:app_portafolio_reto/responsive.dart';
import 'package:flutter/material.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //We hide the appbar on desktop
      appBar: Responsive.isDesktop(
              context) //cuando la pantalla sea mas pequeña aparezca la barra con el icono del menu
          ? null
          : AppBar(
              backgroundColor:
                  bgColor, //cambiar el color en la parte del icono del boton
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();  //para que esconda la parte del perfil y aparezca cuando le des al icono de menu
                  },
                  icon: Icon(Icons.menu), //icono del menu
                ),
              ),
            ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                // ahora cada uno toma el 50% sin el flex: 2
                Expanded(
                  //ahora este toma el 75%
                  //ahora este toma (2+7 = 9) entonces 2/9=0.22 significa 22%
                  flex: 2,
                  child: SideMenu(),
                ),
              SizedBox(width: defaultPadding),
              Expanded(
                // este 7/9 = 0.78 significa 78% de ancho
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children
                      //
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
