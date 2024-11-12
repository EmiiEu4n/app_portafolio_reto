import 'package:flutter/material.dart';

import '../constants.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.value,
    this.text,
  }) : super(key: key);

  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration:
          defaultDuration, //especifica la duracion de la animacion ya esta definido en constants.dart
      builder: (context, value, child) => Text(
        //constriye cada cuadro de la animacion "value" es el rango animado
        "$value$text", //muestra el valor animado y el texto adicional
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: primaryColor),
      ),
    );
  }
}
