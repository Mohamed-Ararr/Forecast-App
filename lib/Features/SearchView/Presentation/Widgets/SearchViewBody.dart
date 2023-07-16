// ignore_for_file: use_build_context_synchronously

import "package:flutter/material.dart";
import "package:geocoding/geocoding.dart";
import "package:geolocator/geolocator.dart";
import "package:go_router/go_router.dart";
import "package:weather_app/ConstantValues.dart";
import "package:weather_app/Core/AppFonts.dart";
import "package:weather_app/Core/AppRouter.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/ConfirmButton.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/CustomTextField.dart";

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  Future<String> _getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
    String getCity = "";

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      debugPrint('Location services are disabled.');
      return "";
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        debugPrint(
            'Location permissions are denied (actual value: $permission).');
        return "";
      }
    }

    if (permission == LocationPermission.deniedForever) {
      debugPrint(
          'Location permissions are permanently denied, we cannot request permissions.');
      return "";
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      if (placemarks.isNotEmpty) {
        String city = placemarks[0].locality ?? "";
        debugPrint('City: $city');
        getCity = city;
      }
    } catch (e) {
      debugPrint('Error: $e');
      return "";
    }
    return getCity;
  }

  GlobalKey<FormState> key = GlobalKey<FormState>();
  String? city;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingLR15,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                "Search for a city",
                style: AppFonts.appTitle,
              ),
              const Spacer(),
              Form(
                key: key,
                autovalidateMode: autovalidateMode,
                child: CustomTextField(
                  onChanged: (value) => city = value,
                ),
              ),
              const Spacer(),
              ConfirmButton(
                onPressed: () {
                  GoRouter.of(context).push(
                    AppRouter.homeView,
                    extra: city,
                  );
                },
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () async {
                  city = await _getLocation();
                  GoRouter.of(context).push(
                    AppRouter.homeView,
                    extra: city,
                  );
                },
                child: const Text("Continue with your current location?"),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
