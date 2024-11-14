import 'package:app_portafolio_reto/models/Recommendation.dart';
import 'package:app_portafolio_reto/screens/home/components/recommendations_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, //justificar a la izquierda
        children: [
          Text(
            "Recommendations",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
              height:
                  defaultPadding), //espacio entre los cuadros y el titulo "recommendation"
          SingleChildScrollView(
            scrollDirection: Axis
                .horizontal, // para que los cuadritos rectangulares s epuedan mover de manera horizontal (como carrusel)
            child: Row(
              children: List.generate(
                demo_recomendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RecommendationCard(
                    recommendation: demo_recomendations[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
