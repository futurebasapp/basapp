import 'package:basapp/view/screens/servicePaycheck.dart';
import 'package:basapp/view/widgets.dart/widgets.dart';
import 'package:flutter/material.dart';

class Antigos extends StatelessWidget {
  const Antigos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      CustomCard(
        altura: 200,
        largura: 400,
        gradient: const LinearGradient(colors: [
          Color.fromARGB(255, 180, 180, 180),
          Color.fromARGB(255, 160, 159, 159)
        ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomCard(
              altura: 120,
              largura: 70,
              gradient: LinearGradient(colors: [Colors.white, Colors.white]),
              child: Icon(Icons.abc),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Texto(
                    gradient:
                        LinearGradient(colors: [Colors.black, Colors.black]),
                    text: 'Tratamento para Cabelo',
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Icon(Icons.circle, color: Colors.blue, size: 30),
                      SizedBox(width: 10),
                      Texto(
                        gradient: LinearGradient(
                            colors: [Colors.black, Colors.black]),
                        text: 'Feito por Alpha Beauty',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      buildTag('R\$199,99'),
                      const SizedBox(width: 20),
                      const Texto(
                        text: "Data escolhida",
                        gradient: LinearGradient(
                            colors: [Colors.black, Colors.black]),
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 50),
                        child: CustomButton(
                          alturaBotao: 25,
                          larguraBotao: 180,
                          gradient: const LinearGradient(
                            colors: [Colors.white, Colors.white],
                          ),
                          text: 'Fazer Novamente',
                          onPressed: () => {},
                          corTexto: const Color.fromARGB(255, 12, 11, 11),
                          tamanho: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    ]));
  }
}
