import 'package:flutter/material.dart';
import 'package:flutter_application_1/overview/onboarding_one.dart';

class OnboardingOverview extends StatefulWidget {
  const OnboardingOverview({super.key});

  @override
  State<OnboardingOverview> createState() => _OnboardingOverviewState();
}

class _OnboardingOverviewState extends State<OnboardingOverview> {
  int currentPage = 0;
  late PageController controller;

  @override
  void initState() {
    controller = PageController(initialPage: currentPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('==============RECONSTRUIRE==================');
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          print(index);
          setState(() {
            currentPage = index;
          });
          print('currentPage :$currentPage');
        },
        controller: controller,
        children: [
          OnboardingOne(controller: controller), // Index 0
        ],
      ),
    );
  }
}
