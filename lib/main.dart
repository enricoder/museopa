import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:museopa/screens/home_screen.dart';
import 'package:museopa/screens/login_screen.dart';
import 'package:museopa/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Museopa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.handlee().fontFamily,
      ),
      initialRoute: 'onboarding1',
      routes: {
       
        'home_screen' : (BuildContext context)=> const HomeScreen(),
        'login_screen' : (BuildContext context)=> const LoginScreen(),
        'onboarding1' : (BuildContext context)=>  OnboardingScreen1(),
        
       /* 
        
        'map_screen' : (BuildContext context)=> const MapScreen(),
        'login_screen' : (BuildContext context)=> const LoginScreen(),
        'detail_museum' : (BuildContext context)=> const DetailMuseumScreen(),
        'map_screen' : (BuildContext context)=> const MapScreen(),
       */

      },
    );
  }
}