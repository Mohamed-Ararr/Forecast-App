import "package:flutter/material.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/ConfirmButton.dart";

import "../../../../ConstantValues.dart";
import "../../../../Core/AppColors.dart";
import "CustomTextField.dart";

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  String? city;
  GlobalKey<FormState> key = GlobalKey<FormState>();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPaddingAll15,
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
          Form(
            key: key,
            autovalidateMode: autovalidateMode,
            child: CustomTextField(
              onChanged: (value) => city = value,
              onSaved: (value) => city = value,
            ),
          ),
          ConfirmButton(
            onPressed: () {
              if (key.currentState!.validate()) {
                key.currentState!.save();
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          )
        ],
      ),
    );
  }
}
