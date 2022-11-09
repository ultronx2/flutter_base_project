import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pothole_detector/app/res/app_size_config.dart';
import 'package:pothole_detector/app/res/colors.dart';
import 'package:pothole_detector/app/res/strings.dart';

class PermissionUtil {
  PermissionUtil._();

  //permission handling
  static Future<PermissionStatus?> getPermission(
      Permission permissionType) async {
    final PermissionStatus permission = await permissionType.status;
    if (permission != PermissionStatus.granted ||
        permission == PermissionStatus.denied) {
      final Map<Permission, PermissionStatus> permissionStatus =
          await [permissionType].request();
      return permissionStatus[permissionType];
    } else {
      return permission;
    }
  }

  /*------------- permission dialog while permission denied manual permission handling -------------*/
  static showActionDialog(
      {BuildContext? context,
      String? description,
      bool shouldShowNegative = true,
      String? positiveText,
      String? negativeText,
      Permission? permissionType,
      GestureTapCallback? onPositiveClick,
      GestureTapCallback? onNagativeClick,
      String title = ''}) {
    showDialog(
        context: context!,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
              onWillPop: () {
                return Future.value(false);
              },
              child: Platform.isIOS
                  ? CupertinoAlertDialog(
                      title: /* title != ""
                    ? */
                          Text(title)
                      /*: Row(children: [
                  Image.asset(
                    AppIcons.appLogoWithoutName,
                     width: SizeConfig.size_22,
                    height: SizeConfig.size_22,
                  ),
                  SizedBox(width: SizeConfig.size_8),
                  const Text(AppStrings.appName)
                ])*/
                      ,
                      content: Text(
                        description!,
                        textAlign: TextAlign.center,
                      ),
                      actions: [
                        if (shouldShowNegative)
                          CupertinoDialogAction(
                            onPressed: onNagativeClick ??
                                () {
                                  Navigator.pop(context);
                                },
                            child: Text(negativeText ?? AppStrings.txtCancel),
                          ),
                        CupertinoDialogAction(
                          onPressed: onPositiveClick ??
                              () {
                                Navigator.pop(context);
                                openAppSettings();
                              },
                          child: Text(positiveText ?? AppStrings.txtSettings),
                        ),
                      ],
                    )
                  : AlertDialog(
                      title: /* title != ""
                    ? */
                          Text(title)
                      /*: Row(children: [
                  Image.asset(
                    AppIcons.appLogoWithoutName,
                     width: SizeConfig.size_22,
                    height: SizeConfig.size_22,
                  ),
                  SizedBox(width: SizeConfig.size_8),
                  const Text(AppStrings.appName)
                ])*/
                      ,
                      content: Text(description!),
                      actions: [
                        if (shouldShowNegative)
                          TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: AppColors.colorPrimary,
                                minimumSize: Size(
                                    SizeConfig.size_85, SizeConfig.size_36),
                                padding: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.size_16),
                              ),
                              onPressed: onNagativeClick ??
                                  () {
                                    Navigator.of(context).pop();
                                  },
                              child: Text(negativeText ?? AppStrings.txtCancel,
                                  style: const TextStyle(color: Colors.black))),
                        TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: AppColors.colorPrimary,
                              minimumSize:
                                  Size(SizeConfig.size_85, SizeConfig.size_36),
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.size_16),
                            ),
                            onPressed: onPositiveClick ??
                                () {
                                  Navigator.of(context).pop();
                                  openAppSettings();
                                },
                            child: Text(
                                positiveText ?? AppStrings.txtOpenSettings,
                                style: const TextStyle(color: Colors.black))),
                      ],
                    ));
        });
  }
}