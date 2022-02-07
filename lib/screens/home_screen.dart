import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    final String email = arguments['email'];
    
    return  Scaffold(
      body: Center(child: Text("Holi! $email")),
    );
  }
}
