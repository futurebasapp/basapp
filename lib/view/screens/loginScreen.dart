import 'package:basapp/view/widgets.dart/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: CustomCard(
            altura: 500, // Ajuste a altura conforme necessário
            largura: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 6.0, left: 16.0),
                  child: Texto(
                    tamanho: 15,
                    texto: 'Endereço de E-mail',
                    cor: Colors.grey,
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Campo(corDeFundo: Colors.white),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 6.0, left: 16.0),
                  child: Texto(
                    tamanho: 15,
                    texto: 'Senha',
                    cor: Colors.grey,
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.0, vertical: 8.0),
                  child: Campo(corDeFundo: Colors.white),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0, right: 176.0),
                    child: CustomButton(
                      alturaBotao: 50,
                      larguraBotao: 200,
                      onPressed: () {},
                      text: 'Esqueci a senha',
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.white, Colors.white],
                      ),
                      corTexto: Colors.purple,
                      tamanho: 20,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(16.0)),
                Center(
                  child: CustomButton(
                    text: 'Continuar',
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFF5E26D9),
                        Color(0xFFAE3EE7),
                        Color(0xFFE024EC),
                      ],
                    ),
                    onPressed: () => {},
                    tamanho: 15,
                    alturaBotao: 70,
                    larguraBotao: 300,
                    corTexto: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
