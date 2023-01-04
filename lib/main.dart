import 'package:flutter/material.dart';
import 'package:project_name/app/res/size/size_config.dart';
import 'package:project_name/app/res/strings/strings.dart';
import 'package:project_name/app/res/styles/app_theme.dart';
import 'package:project_name/app/routes/custom_router.dart';
import 'package:project_name/app/screens/auth/pages/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: AppStrings.appName,
        theme: AppTheme.lightTheme(context),
        darkTheme: AppTheme.darkTheme(context),
        themeMode: appTheme.themeMode,
        onGenerateRoute: CustomRouter.generateRoute,
        home: const LoginScreen(),
        builder: (context, child) {
          SizeConfig.initialize(
              context: context, draftWidth: 375, draftHeight: 812);
          return child!;
        });
  }
}
