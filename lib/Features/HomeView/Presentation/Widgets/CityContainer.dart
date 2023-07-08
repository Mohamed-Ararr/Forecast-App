import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/Core/AppRouter.dart';

import '../../../../Core/AppFonts.dart';

class CityContainer extends StatelessWidget {
  const CityContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: MediaQuery.of(context).size.width * 0.95,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          "Stuttgart",
          style: AppFonts.cityFontStyle,
        ),
        subtitle: Row(
          children: const [
            Icon(Icons.location_on_rounded, size: 20),
            SizedBox(width: 5),
            Text("Algeria", style: TextStyle(fontSize: 16)),
          ],
        ),
        trailing: IconButton(
            onPressed: () => GoRouter.of(context).push(AppRouter.cityView),
            icon: const Icon(
              Icons.info_outline_rounded,
              size: 30,
            )),
      ),
    );
  }
}
