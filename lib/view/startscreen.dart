import 'package:basapp/view/screens/loginScreen.dart';
import 'package:basapp/view/screens/signupScreen.dart'; // Adicione a importação para a tela de cadastro
import 'package:basapp/view/widgets.dart/widgets.dart';
import 'package:flutter/material.dart';

class Startscreen extends StatefulWidget {
  const Startscreen({super.key});

  @override
  _StartscreenState createState() => _StartscreenState();
}

class _StartscreenState extends State<Startscreen> {
  bool isLoginVisible = false;
  bool isSignUpVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomCard(
              altura: 300,
              largura: 400,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 88.0),
                      child: Image.asset("asset/images/basapp.png"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: CustomButton(
                        onPressed: () {
                          setState(() {
                            isLoginVisible = true;
                            isSignUpVisible = false;
                          });
                        },
                        text: 'Login',
                        alturaBotao: 50,
                        larguraBotao: 150,
                        corTexto: Colors.black,
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.white, Colors.white, Colors.white],
                        ),
                        tamanho: 23,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 32.0),
                      child: CustomButton(
                        onPressed: () {
                          setState(() {
                            isLoginVisible = false;
                            isSignUpVisible = true;
                          });
                        },
                        text: 'Cadastro',
                        alturaBotao: 50,
                        larguraBotao: 150,
                        corTexto: Colors.black,
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.white, Colors.white],
                        ),
                        tamanho: 23,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 30)),
            if (isLoginVisible)
              SizedBox(
                height: MediaQuery.of(context).size.height - 300,
                child: const LoginScreen(),
              ),
            if (isSignUpVisible)
              SizedBox(
                height: MediaQuery.of(context).size.height - 300,
                child: const Signupscreen(),
              ),
          ],
        ),
      ),
    );
  }
}
