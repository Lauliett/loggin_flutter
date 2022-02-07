import 'package:flutter/material.dart';
import 'package:loggin_flutter/screens/screens.dart';
import 'package:loggin_flutter/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login firebase',
      theme: AppTheme.lightTheme,
      initialRoute: 'login',
      routes: {
        'login' : ( BuildContext context ) =>  LoginScreen(),
        'home' : ( BuildContext context ) =>  const HomeScreen(),
      },
    );
  }
}