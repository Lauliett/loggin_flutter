import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        width: double.infinity,
        height: double.infinity,
        //El widget stack coloca a los widget uno encima del otro, como si fuesen una "pila de cartas"
        child: Stack(
          children: [
             const _BackgourndImage(),

             SingleChildScrollView(
               child: Column(
               children: [
                 SizedBox(height: 430,),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 50),
                   child: Form(
                     child: Container(
                        width: double.infinity,
                        height: 300,
                        color: Colors.white,
                        child: Column(
                          children: [
                             TextFormField(
                               keyboardType: TextInputType.emailAddress,                      
                               decoration: const InputDecoration(
                                 labelText: "Email",
                                 hintText: "Introduce tu email",
                                 enabledBorder: OutlineInputBorder(
                                   borderSide: BorderSide(color: Colors.green)                                  
                                 ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.pink),
                                )
                               ),
                             ),
                   
                            const SizedBox(height: 20,),
                   
                            TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                 labelText: "Contraseña",
                                 hintText: "Introduce tu contraseña",
                                 enabledBorder: OutlineInputBorder(
                                   borderSide: BorderSide(color: Colors.green)                                  
                                 ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.pink),
                                )
                               ),
                            )
                          ],
                        ),
                     ),
                   ),
                 )              
               ],
             ),)
          ],
        ),
      ),
    );
  }
}

class _BackgourndImage extends StatelessWidget {
  const _BackgourndImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/login_background.jpg"),
        fit: BoxFit.cover)
      ),
    );
  }
}
