import 'package:basapp/view/screens/backHomeCheckout.dart';
import 'package:basapp/view/widgets.dart/widgets.dart';
import 'package:flutter/material.dart';

class Confirmcheckout extends StatelessWidget {
  final Map<String, dynamic> makerData;

  const Confirmcheckout({super.key, required this.makerData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Container(
            padding: const EdgeInsets.only(left: 5),
            child: const Texto(
              text: "Dê um check no serviço escolhido",
              gradient: LinearGradient(colors: [Colors.black, Colors.black]),
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 17),
            child: CustomCard(
              altura: 200,
              largura: 350,
              gradient:
                  const LinearGradient(colors: [Colors.grey, Colors.grey]),
              child: Image.asset('asset/images/basapp.png'),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            child: CustomCard(
              altura: 200,
              largura: 350,
              gradient:
                  const LinearGradient(colors: [Colors.white, Colors.white]),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Texto(
                          gradient: const LinearGradient(
                              colors: [Colors.black, Colors.black]),
                          text: makerData['nome'] ?? 'Serviço',
                          style: const TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const Icon(Icons.circle, color: Colors.blue, size: 30),
                        const SizedBox(width: 10),
                        Texto(
                          gradient: const LinearGradient(
                              colors: [Colors.black, Colors.black]),
                          text:
                              'Feito por ${makerData['empresa'] ?? 'Empresa'}',
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                          child: Wrap(
                            spacing: 6,
                            runSpacing: 6,
                            children: [
                              buildTag('R\$${makerData['preco'] ?? '0,00'}'),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Icon(Icons.money, size: 30),
                        const SizedBox(width: 10),
                        const Texto(
                          text: "Dinheiro",
                          gradient: LinearGradient(
                              colors: [Colors.black, Colors.black]),
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: const Row(
                      children: [
                        Texto(
                          text: "Dia escolhido para o agendamento",
                          gradient: LinearGradient(
                              colors: [Colors.black, Colors.black]),
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  //Lugar onde vai aparecer o horário do back
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 250,
            height: 80,
            child: CustomButton(
              gradient:
                  const LinearGradient(colors: [Colors.grey, Colors.grey]),
              text: 'Confirmar',
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const backHomeCheckout(),
                  ),
                )
              },
              corTexto: Colors.black,
              tamanho: 30,
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildTag(String text) {
  return Container(
    decoration: BoxDecoration(
      color: const Color(0xFF9E9E9E),
      borderRadius: BorderRadius.circular(3),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
    child: Texto(
      gradient: const LinearGradient(colors: [Colors.black, Colors.black]),
      text: text,
      style: const TextStyle(fontSize: 15),
    ),
  );
}
