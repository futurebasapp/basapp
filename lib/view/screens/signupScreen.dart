import 'dart:convert';

import 'package:basapp/view/widgets.dart/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<Signupscreen> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  Future<void> _signup() async {
    final nome = _nomeController.text;
    final email = _emailController.text;
    final senha = _senhaController.text;

    // URL da API PHP hospedada (ajuste conforme necessário)
    const url = 'https://thefuturebasapp.shop/signup.php';

    try {
      final response = await http.post(
        Uri.parse(url),
        body: {
          'nome': nome,
          'email': email,
          'senha': senha,
        },
      );

      // Decodificando a resposta da API
      final responseData = json.decode(response.body);

      if (responseData['status'] == 'success') {
        // Usuário cadastrado com sucesso
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(responseData['message'])),
        );
      } else {
        // Exibindo o erro
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
      resizeToAvoidBottomInset: true,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: CustomCard(
            altura: 400,
            largura: 400,
            gradient:
                const LinearGradient(colors: [Colors.white, Colors.white]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                    padding: EdgeInsets.only(top: 3.0, left: 16.0),
                    child: Texto(
                      gradient:
                          LinearGradient(colors: [Colors.grey, Colors.grey]),
                      style: TextStyle(fontSize: 12),
                      text: 'Endereço de E-mail',
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Campo(
                    controller: _emailController,
                    hintText: "Endereço de E-mail",
                    backgroundColor: Colors.white,
                    borderRadius: 30,
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 6.0, left: 16.0),
                    child: Texto(
                      gradient:
                          LinearGradient(colors: [Colors.grey, Colors.grey]),
                      style: TextStyle(fontSize: 12),
                      text: 'Nome',
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Campo(
                    controller: _nomeController,
                    hintText: "Nome",
                    backgroundColor: Colors.white,
                    borderRadius: 30,
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
                      horizontal: 16.0, vertical: 8.0),
                  child: Campo(
                    controller: _senhaController,
                    hintText: "Senha",
                    backgroundColor: Colors.white,
                    borderRadius: 30,
                  ),
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0, right: 176.0),
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
                    onPressed: _signup,
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
