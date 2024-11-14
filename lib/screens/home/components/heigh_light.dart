import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeighLight extends StatelessWidget {
  const HeighLight({
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
        const SizedBox(
            width: defaultPadding /
                2), //proporciona espacio entre el contador animado y el texto usando deffauldpadding
        Text(label!, style: Theme.of(context).textTheme.titleSmall),
      ],
    );
  }
}

