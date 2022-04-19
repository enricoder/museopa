
import 'package:auth_buttons/auth_buttons.dart'
    show AppleAuthButton, FacebookAuthButton, GoogleAuthButton; 
    //AuthButtonStyle, AuthButtonType, AuthIconType;
    
    
import 'package:flutter/material.dart';
import 'package:museopa/screens/home_screen.dart';
// import 'package:museos_cusco/screens/map_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/bg_login.png'),fit: BoxFit.fill)),
        width: double.infinity,
        height: size.height,
        child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[            
            Container(child: Image.asset('assets/images/logo_blanc.png'), clipBehavior: Clip.none,),
            const SizedBox(height: 40.0,),
            GoogleAuthButton(
                        text: 'Iniciar con Google',
                        onPressed: () {},
                        darkMode: true, // if true second example
              ),
            const SizedBox(height: 20.0,),
            AppleAuthButton(
                        text: 'Iniciar con Apple',
                        onPressed: () {},
                        darkMode: true, // if true second example
              ),
            const SizedBox(height: 20.0,),

            FacebookAuthButton(
              
              text: 'Iniciar con Facebook',
                        onPressed: () {},
                        darkMode: true,
            ),

           TextButton(
              style: ButtonStyle(
                 foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                 ),
              onPressed: ()  { 

                final route = MaterialPageRoute(builder: (context)=> const HomeScreen(),);
                Navigator.push(context, route);
              },
               child: const Text('Saltar'),
),

            
        ],
        ),
      ),
    );
  }
}