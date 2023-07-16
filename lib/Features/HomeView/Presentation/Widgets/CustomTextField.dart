import "package:flutter/material.dart";

import "../../../../ConstantValues.dart";

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.onChanged, this.onSaved});

  final Function(String)? onChanged;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Field required!";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: "Enter city name",
        border: OutlineInputBorder(
          borderRadius: kBorderRad10,
        ),
      ),
    );
  }
}
