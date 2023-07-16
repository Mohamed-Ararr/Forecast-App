import "package:dio/dio.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";
import "package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart";
import "package:weather_app/Data/Bloc%20Manager/FetchCityCubit/fetch_city_forecast_cubit.dart";
import "package:weather_app/Data/HomeRepo/HomeRepoImpl.dart";
import "package:weather_app/Data/Services/ApiService.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/ConfirmButton.dart";

import "../../../../ConstantValues.dart";
import "../../../../Core/AppColors.dart";
import "../../../../Core/serviceLocator.dart";
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
              onChanged: (value) {
                setState(() {
                  city = value;
                });
              },
              onSaved: (value) {
                setState(() {
                  city = value;
                });
              },
            ),
          ),
          BlocProvider(
            create: (context) => FetchCityForecastCubit(
              locator.get<HomeRepoImpl>(),
            ),
            child: BlocConsumer<FetchCityForecastCubit, FetchCityForecastState>(
              listener: (context, state) {
                if (state is FetchCityForecastFailure) {
                  debugPrint(state.errorMsg);
                }
                if (state is FetchCityForecastSuccess) {
                  debugPrint("Success");
                  debugPrint("the model: ${state.forecastModel}");
                  GoRouter.of(context).pop();
                }
              },
              builder: (context, state) {
                return ConfirmButton(
                  onPressed: () {
                    if (key.currentState!.validate()) {
                      key.currentState!.save();
                      BlocProvider.of<FetchCityForecastCubit>(context)
                          .fetchCity(city!);
                      debugPrint(city);
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
