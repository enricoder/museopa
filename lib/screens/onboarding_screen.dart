
import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:lottie/lottie.dart';
import 'package:museopa/models/card_onboarding.dart';
import 'package:museopa/screens/login_screen.dart';

class OnboardingScreen1 extends StatelessWidget {
  OnboardingScreen1({Key? key}) : super(key: key);

  final data = [
    CardOnboardingData(
      title: 'ENCUENTRA',
      subtitle:
          'Ubica museos cercanos a ti para iniciar tu recorrido y optimizar el tiempo en la ciudad.',
      image: const AssetImage("assets/images/onboar_map.png"),
      backgroundcolor: const Color.fromARGB(255, 60, 26, 13),
      titlecolor: Colors.amber,
      subtitlecolor: Colors.white,
      background: LottieBuilder.asset('assets/animation/bgroj01.json'),
    ),
    CardOnboardingData(
      title: 'INFÓRMATE',
      subtitle:
          'Conoce cuales son los horarios y tarifas para ingresar a los museos en la ciudad .',
      image: const AssetImage("assets/images/onboar_clock.png"),
      backgroundcolor: Colors.white,
      titlecolor: const Color.fromARGB(255, 60, 26, 13),
      subtitlecolor: Colors.black,
      background: LottieBuilder.asset('assets/animation/bgbla02.json'),
    ),
    CardOnboardingData(
      title: 'VISITA',
      subtitle:
          'LLénate de energía y comienza tu recorrido por los mejores museos.',
      image: const AssetImage("assets/images/onboard_visita.png"),
      backgroundcolor: const Color.fromARGB(255, 60, 26, 13),
      titlecolor: Colors.amber,
      subtitlecolor: Colors.white,
      background: LottieBuilder.asset('assets/animation/bgrojo04.json'),
    ),    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundcolor).toList(),
        itemCount: data.length,
        itemBuilder: (int index, double value) {
          return CardOnboarding(data: data[index]);
        },
       onFinish:(){
        final route = MaterialPageRoute(builder: (context)=> const LoginScreen(),);
        Navigator.push(context, route);
       } ,
       
      ),
    );
  }
}
