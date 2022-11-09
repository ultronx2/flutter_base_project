import 'package:flutter/material.dart';
import 'package:pothole_detector/app/common_widget/text_widget.dart';
import 'package:pothole_detector/app/res/app_size_config.dart';
import 'package:pothole_detector/app/res/font_family.dart';
import 'package:pothole_detector/app/services/navigator_service.dart';

showSnackBar(String data, {BuildContext? context, Duration? duration}) {
  ScaffoldMessenger.of(
          context ?? NavigationService.navigatorKey.currentContext!)
      .hideCurrentSnackBar();
  ScaffoldMessenger.of(
          context ?? NavigationService.navigatorKey.currentContext!)
      .showSnackBar(
    SnackBar(
      backgroundColor: Colors.white,
      margin: EdgeInsets.symmetric(
          vertical: SizeConfig.size_4, horizontal: SizeConfig.size_4),
      elevation: 5,
      content: TextWidget(
        text: data,
        color: Colors.white,
        textSize: SizeConfig.font_14,
        fontWeight: FontStyles.medium,
      ),
      duration: duration ?? const Duration(seconds: 2),
    ),
  );
}

showSuccessSnackBar(String data, {BuildContext? context, Duration? duration}) {}

/*
TODO REMOVE FOR TOAST
showToast(String data, {bool showForShortPeriod = true}) {
  Fluttertoast.showToast(
      msg: data,
      toastLength: showForShortPeriod ? Toast.LENGTH_SHORT : Toast.LENGTH_LONG);
}

showCantReSubmitSnack() {
  showSnackBar(AppStrings.cantReSubmit, duration: const Duration(seconds: 3));
}*/
