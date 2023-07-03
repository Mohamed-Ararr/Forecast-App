import 'package:flutter/material.dart';

import '../../../../Core/AppFonts.dart';

class CityContainer extends StatelessWidget {
  const CityContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Stuttgart",
        style: AppFonts.cityFontStyle,
      ),
      subtitle: const Text(
        "12 September, Sunday",
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.info_outline_rounded,
            size: 30,
          )),
    );
  }
}
