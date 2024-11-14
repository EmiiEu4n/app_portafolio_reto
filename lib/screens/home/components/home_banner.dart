import 'package:animated_text_kit/animated_text_kit.dart'; // Importa la librería para texto animado.
import 'package:app_portafolio_reto/responsive.dart'; // Importa la clase para manejar la adaptabilidad de la interfaz.
import 'package:flutter/material.dart'; // Importa la biblioteca de Flutter para construir interfaces gráficas.

import '../../../constants.dart'; // Importa las constantes definidas, como colores y márgenes.

class HomeBanner extends StatelessWidget { // Define un widget Stateless que representa un banner en la página principal.
  const HomeBanner({ // Constructor del widget HomeBanner.
    super.key, // Recibe un parámetro opcional de clave.
  });

  @override
  Widget build(BuildContext context) { // Método build que crea la interfaz de usuario del widget.
    return AspectRatio( // Ajusta el aspecto de la sección del banner.
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3, // Cambia la relación de aspecto según si el dispositivo es móvil.
      child: Stack( // Utiliza un Stack para superponer widgets dentro del banner.
        fit: StackFit.expand, // Asegura que el Stack ocupe todo el espacio disponible.
        children: [
          Image.asset( // Muestra la imagen de fondo del banner.
            "assets/images/bg.jpeg", // Ruta de la imagen.
            fit: BoxFit.cover, // Hace que la imagen cubra toda la área del banner sin distorsionarse.
          ),
          Container(color: darkColor.withOpacity(0.66)), // Aplica un filtro oscuro sobre la imagen de fondo.
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding), // Añade un padding horizontal.
            child: Column( // Organiza los widgets verticalmente en el banner.
              crossAxisAlignment: CrossAxisAlignment.start, // Alinea los elementos al inicio del eje horizontal.
              mainAxisAlignment: MainAxisAlignment.center, // Centra los elementos en el eje vertical.
              children: [
                Text(
                  "Discover my Amazing \nArt space!", // El texto principal del banner.
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.displaySmall!.copyWith( // Cambia el estilo del texto según el tipo de dispositivo.
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )
                      : Theme.of(context).textTheme.headlineSmall!.copyWith( // Estilo para pantallas más pequeñas.
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2), // Espacio extra en dispositivos móviles grandes.
                MyBuildAnimatedText(), // Llama al widget que genera el texto animado.
                SizedBox(height: defaultPadding), // Añade un espacio entre el texto y el botón.
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton( // Muestra un botón de "Explorar ahora" en pantallas grandes.
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding),
                      backgroundColor: primaryColor,
                    ),
                    child: Text(
                      "EXPLORE NOW", // Texto del botón.
                      style: TextStyle(color: darkColor),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget { // Widget que maneja la animación del texto.
  const MyBuildAnimatedText({ // Constructor del widget MyBuildAnimatedText.
    super.key,
  });

  @override
  Widget build(BuildContext context) { // Método build que construye el widget.
    return DefaultTextStyle( // Aplica un estilo predeterminado a todos los textos dentro del widget.
      style: Theme.of(context).textTheme.titleMedium!,
      maxLines: 1, // Limita el texto a una línea.
      child: Row( // Organiza los elementos horizontalmente.
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(), // Muestra el texto "<flutter>" solo en pantallas grandes.
          if (!Responsive.isMobileLarge(context)) // Solo muestra esto en pantallas grandes.
            SizedBox(width: defaultPadding / 2),
          Text("I build "), // Texto estático que precede al texto animado.
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText()) // Muestra el texto animado con un comportamiento expansivo en pantallas pequeñas.
              : AnimatedText(), // Muestra el texto animado en pantallas más grandes.
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context))
            FlutterCodedText(), // Vuelve a mostrar el texto "<flutter>" en pantallas grandes.
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget { // Widget que maneja la animación de texto.
  const AnimatedText({ // Constructor del widget AnimatedText.
    super.key,
  });

  @override
  Widget build(BuildContext context) { // Método build que construye la interfaz del widget.
    return AnimatedTextKit( // Usando la librería animated_text_kit para la animación.
      animatedTexts: [
        TyperAnimatedText( // Define el tipo de animación que simula que el texto se escribe.
          "responsive web and mobile app.",
          speed: Duration(milliseconds: 60), // La velocidad de la animación.
        ),
        TyperAnimatedText(
          "complete e-Commerce app UI.",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "chat app with dark and light theme.",
          speed: Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget { // Widget que muestra el texto "<flutter>" estilizado.
  const FlutterCodedText({ // Constructor del widget FlutterCodedText.
    super.key,
  });

  @override
  Widget build(BuildContext context) { // Método build que construye la interfaz del widget.
    return Text.rich( // Crea un texto con estilo enriquecido.
      TextSpan(
        text: "<", // Parte inicial del texto.
        children: [
          TextSpan(
            text: "flutter", // Texto "flutter" estilizado con un color específico.
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"), // Parte final del texto.
        ],
      ),
    );
  }
}
