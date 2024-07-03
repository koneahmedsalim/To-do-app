import 'package:flutter/material.dart';
import 'package:flutter_application_1/authentifications/login_or_register.dart';
import 'package:flutter_application_1/model/restaurant.dart';
import 'package:flutter_application_1/overview/onboarding_overview.dart';

import 'package:flutter_application_1/themes/themes_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      //theme
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      //restaurant
      ChangeNotifierProvider(create: (context) => Restaurant()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnboardingOverview(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
