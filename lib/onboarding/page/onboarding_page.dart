

import 'package:fitness_app/onboarding/page/HomePage.dart';

import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';

class onboadringPage extends StatefulWidget {
  const onboadringPage({super.key});

  @override
  State<onboadringPage> createState() => _onboardingPageState();

}
 class _onboardingPageState extends State<onboadringPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_)=>  HomePage()),
    );
  }

  @override
   Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      skipStyle: ButtonStyle(
        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 17)),
          foregroundColor: MaterialStateProperty.all(Colors.redAccent)),
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      infiniteAutoScroll: true,
      pages: [
        PageViewModel(
          title: "",
          bodyWidget: Column(
            children: [
              Text('Your Personal Habit Manager',
              ),
              const SizedBox(height: 20),
              const Image(image: AssetImage('assets/dance.png')),
            ],
          ),
        ),

      ],
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      onChange: (val) {},
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600) ),
      next: const Icon(
        Icons.arrow_forward,
      ),
      done: const Text('Done',
      style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Color.fromARGB(225, 248, 64, 64)
      )),
      onDone: () => _onIntroEnd(context),
      nextStyle: ButtonStyle(
        foregroundColor:
        MaterialStateProperty.all(Color.fromARGB(255, 248, 64, 64))),
      dotsDecorator: const DotsDecorator(
        size: Size.square(10),
        activeColor: Colors.redAccent,
        activeSize: Size.square(17),
      ),
      );

  }
 }