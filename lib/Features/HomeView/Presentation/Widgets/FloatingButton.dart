import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

import "../../../../ConstantValues.dart";
import "../../../../Core/AppColors.dart";

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.whiteColor,
      onPressed: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: kBorderRad15,
          ),
          context: context,
          builder: (context) {
            return Container(
              padding: kPaddingAll15,
              height: MediaQuery.of(context).size.height * .3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: 4,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search for a city",
                      border: OutlineInputBorder(
                        borderRadius: kBorderRad10,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: kBorderRad15,
                      ),
                      fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    ),
                    child: const Text("Search"),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: const Icon(FontAwesomeIcons.magnifyingGlass),
    );
  }
}
