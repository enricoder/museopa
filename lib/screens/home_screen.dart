import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg_login.png'),
          fit: BoxFit.fill)), 
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          TextButton(
                style: ButtonStyle(
                   foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                   ),
                onPressed: ()  { 
        
                  final route = MaterialPageRoute(builder: (context)=> const HomeScreen(),);
                  Navigator.push(context, route);
                },
                 child: const Text('arriba'),
        ),
          TextButton(
                style: ButtonStyle(
                   foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                   ),
                onPressed: ()  { 
        
                  final route = MaterialPageRoute(builder: (context)=> const HomeScreen(),);
                  Navigator.push(context, route);
                },
                 child: const Text('Ver en Mapa'),
        ),
        
            ],
          ),
        ))
        
    );
  }
}