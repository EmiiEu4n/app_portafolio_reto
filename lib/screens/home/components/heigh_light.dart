import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeighLigth extends StatelessWidget {
  const HeighLigth({
    super.key,
    required this.counter,
    this.label,
  });

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //We want this texto to animation
        counter,
        SizedBox(
            width: defaultPadding /
                2), //proporciona espacio entre el contador animado y el texto usando deffauldpadding
        Text(label!, style: Theme.of(context).textTheme.titleSmall),
      ],
    );
  }
}

