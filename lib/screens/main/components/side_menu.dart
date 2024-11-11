import 'package:app_portafolio_reto/constants.dart';
import 'package:flutter/material.dart';

import 'area_info_text.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
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
                  Skills(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


