import "package:cached_network_image/cached_network_image.dart";
import "package:flutter/material.dart";

import "../../../../Core/AppColors.dart";

class DisplayForecastImage extends StatelessWidget {
  const DisplayForecastImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      errorWidget: (context, url, error) => const Icon(Icons.error),
      imageUrl: imageUrl,
      progressIndicatorBuilder: ((context, url, progress) => SizedBox(
            width: 25,
            height: 25,
            child: CircularProgressIndicator(
              color: AppColors.whiteColor,
              strokeWidth: 2.5,
            ),
          )),
    );
  }
}
