import "package:flutter/material.dart";

import "../../../../Core/AppColors.dart";

class LoadingProgress extends StatelessWidget {
  const LoadingProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: AppColors.whiteColor,
            strokeWidth: 2.5,
          ),
          const SizedBox(height: 20),
          const Text("Fetch current location..."),
        ],
      ),
    );
  }
}
