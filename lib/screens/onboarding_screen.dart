import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();

  Widget _buildImage(String assetName) =>
      Lottie.asset('assets/images/onboarding/$assetName');

  @override
  Widget build(BuildContext context) {
    void _onIntroEnd() {
      Navigator.of(context).pushReplacementNamed("login_person");
    }

    const bodyStyle = TextStyle(fontSize: 19.0, color: Colors.purple);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0, fontWeight: FontWeight.w700, color: Colors.purple),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.all(20),
      imageFlex: 2,
      bodyFlex: 1,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "¡ Bienvenido a esta nuevo experiencia !",
          body: "Solicita desde aca todo lo que deseas.",
          image: _buildImage('logo_1.json'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "En el lugar que te encuentres.",
          body: "Podras ver la carta de los lugares posibles de asistir.",
          image: _buildImage('logo_2.json'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Tambien podras pedir.",
          body: "Desde aqui mismo desde el momento que tomes asiento.",
          image: _buildImage('logo_3.json'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Felicitaciones estas a un paso de ser feliz.",
          body: "Dale al click continuar y comencemos.",
          image: _buildImage('logo_4.json'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(),
      skipFlex: 0,
      showSkipButton: true,
      nextFlex: 0,
      skip: const Text('Saltar',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.purple,
          )),
      next: const Icon(
        Icons.arrow_forward,
        color: Colors.purple,
        size: 30,
      ),
      done: const Text('Continuar',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.purple,
          )),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.purpleAccent,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        activeColor: Colors.purple,
      ),
    );
  }
}
