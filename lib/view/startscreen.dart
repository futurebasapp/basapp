import 'package:basapp/view/screens/loginScreen.dart';
import 'package:basapp/view/widgets.dart/widgets.dart';
import 'package:flutter/material.dart';

class Startscreen extends StatefulWidget {
  const Startscreen({super.key});

  @override
  _StartscreenState createState() => _StartscreenState();
}

class _StartscreenState extends State<Startscreen> {
  bool isLoginVisible = false;

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
                          });
                        },
                        text: 'Login',
                        alturaBotao: 50,
                        larguroBotao: 150,
                        corTexto: Colors.black,
                        corFundo: Colors.white,
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
                          });
                        },
                        text: 'Cadastro',
                        alturaBotao: 50,
                        larguroBotao: 150,
                        corTexto: Colors.black,
                        corFundo: Colors.white,
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
                height: MediaQuery.of(context).size.height - 400,
                child: const LoginScreen(),
              ),
          ],
        ),
      ),
    );
  }
}
