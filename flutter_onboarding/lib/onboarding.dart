import 'package:flutter/material.dart';
import 'package:flutter_onboarding/main.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: 'Welcome to my app',
            body: 'This is the SexyWoong with friends',
            image: Image.asset('image/1.jpg'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: 'Welcome to my app',
            body: 'This is the SexyWoong with hwan brother',
            image: Image.asset('image/3.jpg'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: 'Welcome to my app',
            body: 'This is the Real SexyWoong',
            image: Image.asset('image/Around_1007_DSC01501.jpg'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: 'Welcome to my app',
            body: 'This is the yoga SexyWoong',
            image: Image.asset('image/Around_1007_DSC01531.jpg'),
            decoration: getPageDecoration()),
      ],

      done: const Text('done'),
      //onboarding screen의 마지막 페이지까지 봤을때무엇을 해줄지 지정해주는 버튼
      onDone: () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => const MyPage()));
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
          color: Colors.cyan,
          size: const Size(10, 10),
          activeSize: const Size(22, 10),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          activeColor: Colors.pink),
      curve: Curves.bounceOut,
    );
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 18.0, color: Colors.blue),
        imagePadding: EdgeInsets.only(top: 40),
        pageColor: Colors.orangeAccent);
  }
}
