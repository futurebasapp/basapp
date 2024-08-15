import 'package:basapp/view/screens/lobby.dart';
import 'package:basapp/view/widgets.dart/widgets.dart';
import 'package:flutter/material.dart';

class backHomeCheckout extends StatelessWidget {
  const backHomeCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          padding: const EdgeInsets.only(left: 15),
          child: const Texto(
              text: "Serviço agendado com sucesso",
              gradient: LinearGradient(colors: [Colors.black, Colors.black]),
              style: TextStyle(fontSize: 25))),
      const SizedBox(height: 30),
      SizedBox(
          width: 250,
          height: 80,
          child: CustomButton(
              gradient:
                  const LinearGradient(colors: [Colors.grey, Colors.grey]),
              text: 'Home',
              onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const lobby(),
                      ),
                    )
                  },
              corTexto: Colors.black,
              tamanho: 30))
    ]));
  }
}
