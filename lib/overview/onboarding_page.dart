import 'package:flutter/material.dart';
import 'package:flutter_application_1/overview/onboarding_overview.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  void initState() {
    print('Hello');



    Future.delayed(Duration.zero, () async {
      ///
      ///
      await Future.delayed(const Duration(seconds: 3));

      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const OnboardingOverview()));

      print('Hello 2');
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/or blanc.jpg'))),
          ),
          Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CircularProgressIndicator(
                  color: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
