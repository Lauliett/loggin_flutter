import 'package:flutter/material.dart';
import 'package:loggin_flutter/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login firebase',
      initialRoute: 'login',
      routes: {
        'login' : ( BuildContext context ) =>  const LoginScreen(),
        'home' : ( BuildContext context ) =>  HomeScreen(),
      },
    );
  }
}