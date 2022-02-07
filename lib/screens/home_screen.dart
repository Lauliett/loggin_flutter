import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _BackgourndImage(child: Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
           children: [
              const SizedBox(height: 480,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Form(
                  child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(children: [
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
                          ),
                          labelStyle: TextStyle(
                            color: Colors.grey
                            ),
                          suffixIcon: Icon( Icons.email ),
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
                            ),
                            labelStyle: TextStyle(
                              color: Colors.grey
                            ),
                            suffixIcon: Icon( Icons.password_rounded),
                          ),
                      ),
                      const SizedBox(height: 30,),
                      ElevatedButton(
                        onPressed: (){}, 
                        child: const Center(child: Text('ENTRAR'),),   
                        style: ButtonStyle(backgroundColor:  MaterialStateProperty.all<Color>(Colors.pink),),
                        )
                    ],),
                  ),
                ),
              )
           ]
        ),
      )
    ));
  }
}

class _BackgourndImage extends StatelessWidget {
  final Widget child;
  const _BackgourndImage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/login_background.jpg"),
              fit: BoxFit.cover)),
      child: child,
    );
  }
}
