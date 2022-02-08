import 'package:flutter/material.dart';
import 'package:loggin_flutter/model/user_login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    //final String email = arguments['email'];
    //final String password = arguments['password'];
    final userLogin = ModalRoute.of(context)!.settings.arguments as UserLogin;
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text("Holi " + userLogin.getEmail()),
            Text("Tu contraseña es: " + userLogin.getPassword()),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'login');
              },
              child: const Text('VOLVER'),
            )
          ],
        ),
      ),
    );
  }
}
