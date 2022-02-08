import 'package:flutter/material.dart';
import 'package:loggin_flutter/model/user_login.dart';
import 'package:loggin_flutter/widgets/custom_input.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

  final Map<String, String> formvalues = {
    'email': '',
    'password': '',
  };

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _BackgourndImage(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  height: 480,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Form(
                    key: myFormKey,
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          CustomInputField(
                              formPropierty: 'email',
                              formValues: formvalues,
                              hintText: "Introduce tu email",
                              suffixicon: Icons.email,
                              keyboardType: TextInputType.emailAddress),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomInputField(
                            formPropierty: 'password',
                            formValues: formvalues,
                            hintText: "Introduce tu contraseña",
                            suffixicon: Icons.lock_outline_rounded,
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              //Recordar: esto es para quitar el teclado de la pantalla!
                              FocusScope.of(context).requestFocus(FocusNode());

                              if (!myFormKey.currentState!.validate()) {
                                print('Formulario No valido');
                                return;
                              }
                              //Otra opcion es mandar un objeto
                              UserLogin userLogin = UserLogin(
                                  (formvalues['email'] == null)
                                      ? ""
                                      : formvalues['email']!,
                                  (formvalues['password'] == null)
                                      ? ""
                                      : formvalues['password']!);
                              
                              Navigator.pushNamed(context, 'home', arguments: userLogin);

                              /*
                              Navigator.pushNamed(context, 'home', arguments: {
                                'email': formvalues['email'],
                                'password': formvalues['password']
                              });*/
                            },
                            child: const Center(
                              child: Text('ENTRAR'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ]),
            )));
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
