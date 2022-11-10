import 'package:flutter/material.dart';
import 'package:project_name/app/res/dimens/size_config.dart';
import 'package:project_name/app/screens/auth/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SizeConfigWidget(
        key: UniqueKey(),
        draftSize: const Size(375, 812),
        child: const LoginScreen(),
      ),
    );
  }
}
