import 'package:app_portafolio_reto/components/animated_counter.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeighLigth(
            counter: AnimatedCounter(
              value: 119, //valor final que mostrara el contador
              text: "K+", //texto adicional que se mostrara
            ),
            label: "Subscribers",
          ),
          HeighLigth(
            counter: AnimatedCounter(
              value: 40, //valor final que mostrara el contador
              text: "+", //texto adicional que se mostrara
            ),
            label: "Videos",
          ),
          HeighLigth(
            counter: AnimatedCounter(
              value: 30, //valor final que mostrara el contador
              text: "+", //texto adicional que se mostrara
            ),
            label: "GitHub Projects",
          ),
          HeighLigth(
            counter: AnimatedCounter(
              value: 13, //valor final que mostrara el contador
              text: "K+", //texto adicional que se mostrara
            ),
            label: "Stars",
          ),
        ],
      ),
    );
  }
}
