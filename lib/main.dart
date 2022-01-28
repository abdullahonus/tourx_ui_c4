import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:tourx_ui_c4/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Countrol4',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const OnBoardingPage(),
    );
  }
}

////////////////////////////////////////////
///follor For more ig: @Countrol4offical
///@countrolfour@gmail.com
////////////////////////////////////////////
class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;

    const pageDecoration = PageDecoration(
        pageColor: Colors.white,
        imagePadding: EdgeInsets.zero,
        fullScreen: true,
        bodyFlex: 0);

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.black,
      pages: [
        PageViewModel(
            title: "",
            body: "",
            decoration: pageDecoration,
            image: Stack(children: [
              Container(
                height: sizeHeight * 1,
                width: sizeWidth * 1,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    "assets/3.png",
                  ),
                  fit: BoxFit.cover,
                )),
              ),
              Container(
                width: sizeWidth * 1,
                height: sizeHeight * 1,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.2),
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.9),
                    Colors.black
                  ],
                )),
              ),
              const Positioned(
                  left: 20,
                  bottom: 200,
                  child: Text(
                    "Let's Tour",
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xffFD4416),
                        fontWeight: FontWeight.bold),
                  )),
              const Positioned(
                  left: 20,
                  bottom: 130,
                  child: Text(
                    "Plan your Vacation \nWith Us",
                    style: TextStyle(
                        fontFamily: "mont",
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )),
            ])),
        PageViewModel(
            title: "",
            body: "",
            decoration: pageDecoration,
            image: Stack(children: [
              Container(
                height: sizeHeight * 1,
                width: sizeWidth * 1,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    "assets/4.png",
                  ),
                  fit: BoxFit.cover,
                )),
              ),
              Container(
                width: sizeWidth * 1,
                height: sizeHeight * 1,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.2),
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.9),
                    Colors.black
                  ],
                )),
              ),
              const Positioned(
                  left: 20,
                  bottom: 200,
                  child: Text(
                    "Easy To Use",
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xffFD4416),
                        fontWeight: FontWeight.bold),
                  )),
              const Positioned(
                  left: 15,
                  bottom: 120,
                  child: Text(
                    "Finish your transactions \nover the phone.",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: "mont"),
                  )),
            ])),
        PageViewModel(
            title: "",
            body: "",
            decoration: pageDecoration,
            image: Stack(children: [
              Container(
                height: sizeHeight * 1,
                width: sizeWidth * 1,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    "assets/5.png",
                  ),
                  fit: BoxFit.cover,
                )),
              ),
              Container(
                width: sizeWidth * 1,
                height: sizeHeight * 1,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.2),
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.9),
                    Colors.black
                  ],
                )),
              ),
              const Positioned(
                  left: 20,
                  bottom: 200,
                  child: Text(
                    "Quick Reservation",
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xffFD4416),
                        fontWeight: FontWeight.bold),
                  )),
              const Positioned(
                  left: 20,
                  bottom: 120,
                  child: Text(
                    "Let's finish your \nreservation together",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: "mont"),
                  )),
            ]))
      ],
      onDone: () => _onIntroEnd(context),
      showSkipButton: false,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip', style: TextStyle(color: Colors.white)),
      next: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: const Color(0xffFD4416),
            borderRadius: BorderRadius.circular(30)),
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
      done: Container(
        margin: const EdgeInsets.fromLTRB(0, 7, 0, 20),
        child: const Text('Done',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 20)),
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(0),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(0.0)
          : const EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 5.0),
        spacing: EdgeInsets.only(right: 10),
        color: Colors.white,
        activeColor: Color(0xffFD4416),
        activeSize: Size(50.0, 5.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0)),
        ),
      ),
    );
  }
}

class CurrentPage extends StatelessWidget {
  const CurrentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
