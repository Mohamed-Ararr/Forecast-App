import "package:flutter/material.dart";

import "../../../../ConstantValues.dart";
import "StatBox.dart";

class StatsGridview extends StatelessWidget {
  const StatsGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => StatBox(
        title: kStatList[index],
      ),
    );
  }
}
