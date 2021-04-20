import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart' as route;

class IntroScreen extends StatelessWidget {
  final listPagesViewModel = [
    PageViewModel(
      title: "Find your Vyb",
      body: "Your community, created by you",
      image: Center(
        child: Image.asset('assets/onboarding/vybe.png', height: 300.0),
      ),
    ),
    PageViewModel(
      title: "Share Resources & Events",
      body: "Find out what's happening in your vyb",
      image: Center(
        child: Image.asset('assets/onboarding/calendar_v.png', height: 300.0),
      ),
    ),
    PageViewModel(
      title: "Connect & Engage",
      body: "Message anyone in your community to build connections",
      image: Center(
        child: Image.asset('assets/onboarding/vybe.png', height: 300.0),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: listPagesViewModel,
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () {
        // When done button is press
        context.navigator.replace(route.Routes.onboardingAccount);
      },
    );
  }
}
