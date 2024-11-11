import 'package:flutter/material.dart';

import '../../../components/animated_progress_indicator.dart';
import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "coding",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        const AnimatedLinearProgressIndicator(percentage: 0.3, label: "Dart"),
        const AnimatedLinearProgressIndicator(percentage: 0.8, label: "Java"),
        const AnimatedLinearProgressIndicator(percentage: 0.5, label: "Python"),
      ],
    );
  }
}