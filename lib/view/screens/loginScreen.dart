import 'dart:convert';

import 'package:basapp/view/widgets.dart/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'lobby.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  Future<void> _login() async {
    final email = _emailController.text;
    final senha = _senhaController.text;

    const url = 'https://thefuturebasapp.shop/login.php';

    try {
      final response = await http.post(
        Uri.parse(url),
        body: {
          'email': email,
          'senha': senha,
        },
      );
      final responseData = json.decode(response.body);

      if (responseData['status'] == 'success') {
        // Login bem-sucedido, redireciona para 'lobby.dart'
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const lobby()), // Redireciona para o lobby
        );
      } else {
        // Exibe o erro retornado pela API
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(responseData['message'])),
        );
      }
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Erro ao se conectar com o servidor.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: CustomCard(
            altura: 500,
            largura: 400,
            gradient:
                const LinearGradient(colors: [Colors.white, Colors.white]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                    padding: EdgeInsets.only(top: 6.0, left: 16.0),
                    child: Texto(
                      gradient:
                          LinearGradient(colors: [Colors.grey, Colors.grey]),
                      style: TextStyle(fontSize: 12),
                      text: 'Endereço de E-mail',
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Campo(
                    controller: _emailController,
                    hintText: "Endereço de E-mail",
                    backgroundColor: Colors.white,
                    borderRadius: 20,
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 6.0, left: 16.0),
                    child: Texto(
                      gradient:
                          LinearGradient(colors: [Colors.grey, Colors.grey]),
                      style: TextStyle(fontSize: 12),
                      text: 'Senha',
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 13.0, vertical: 8.0),
                  child: Campo(
                    controller: _senhaController,
                    hintText: "Senha",
                    backgroundColor: Colors.white,
                    borderRadius: 20,
                  ),
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
                    onPressed: _login,
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
