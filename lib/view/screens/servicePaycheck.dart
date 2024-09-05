import 'dart:convert';

import 'package:basapp/view/screens/confirmCheckout.dart';
import 'package:basapp/view/widgets.dart/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ServicePaycheck extends StatefulWidget {
  final Map<String, dynamic> makerData;
  const ServicePaycheck({super.key, required this.makerData});

  @override
  _ServicePaycheckState createState() => _ServicePaycheckState();
}

class _ServicePaycheckState extends State<ServicePaycheck> {
  String makerName = '';
  String makerDescription = '';
  List<dynamic> services = [];
  double selectedPrice = 0.0;
  String selectedPaymentMethod = 'Dinheiro'; // Default payment method

  @override
  void initState() {
    super.initState();
    fetchMakerData();
  }

  Future<void> fetchMakerData() async {
    final makerId = widget.makerData['maker_id'];

    if (makerId == null ||
        !(makerId is int ||
            makerId is String && int.tryParse(makerId) != null)) {
      print('maker_id inválido');
      return;
    }

    final response = await http.get(Uri.parse(
        'https://www.thefuturebasapp.shop/api/get_services_by_maker.php?maker_id=${int.parse(makerId.toString())}'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      setState(() {
        makerName = data['maker']['nome'];
        makerDescription = data['maker']['descricao'];
        services = data['services'];

        final preco = data['maker']['preco'];
        selectedPrice =
            preco != null ? double.tryParse(preco.toString()) ?? 0.0 : 0.0;
      });
    } else {
      print('Erro ao buscar dados do maker: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomCard(
              altura: 200,
              largura: 400,
              gradient:
                  const LinearGradient(colors: [Colors.grey, Colors.grey]),
              child: Image.asset('asset/images/basapp.png'),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(4, 0, 4, 4),
              child: Align(
                alignment: Alignment.topLeft,
                child: Texto(
                  gradient: const LinearGradient(
                      colors: [Colors.black, Colors.black]),
                  text: widget.makerData['nome'] ?? 'Serviço',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(width: 20),
                const Icon(
                  Icons.abc,
                  color: Colors.green,
                ),
                Texto(
                  gradient: const LinearGradient(
                      colors: [Colors.black, Colors.black]),
                  text:
                      ' Feito por  ${widget.makerData["maker_id"] ?? 'Empresa'}',
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ...services.map((service) {
              return Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      Texto(
                        gradient: const LinearGradient(
                            colors: [Colors.black, Colors.black]),
                        text: service['nome'],
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(width: 10),
                      Texto(
                        gradient: const LinearGradient(
                            colors: [Colors.black, Colors.black]),
                        text: 'R\$${selectedPrice.toStringAsFixed(2)}',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Texto(
                    text: service['descricao'],
                    gradient: const LinearGradient(
                        colors: [Colors.black, Colors.black]),
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                ],
              );
            }),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(4, 0, 0, 25),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(7, 15, 4, 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.fromLTRB(5, 2, 5, 2.7),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Texto(
                            text:
                                'R\$${widget.makerData['preco']?.toString() ?? '0.00'}',
                            style: const TextStyle(
                              fontSize: 17,
                              color: Color(0xFF000000),
                            ),
                            gradient: const LinearGradient(
                                colors: [Colors.black, Colors.black]),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const Row(
              children: [
                SizedBox(width: 10),
                Texto(
                    text: 'Selecione a forma de Pagamento',
                    gradient:
                        LinearGradient(colors: [Colors.black, Colors.black]),
                    style: TextStyle(fontSize: 20))
              ],
            ),
            Column(
              children: [
                ListTile(
                  title: const Texto(
                    text: 'Dinheiro',
                    gradient:
                        LinearGradient(colors: [Colors.black, Colors.black]),
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Radio<String>(
                    value: 'Dinheiro',
                    groupValue: selectedPaymentMethod,
                    onChanged: (String? value) {
                      setState(() {
                        selectedPaymentMethod = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Texto(
                    text: 'Cartão de Crédito',
                    gradient:
                        LinearGradient(colors: [Colors.black, Colors.black]),
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Radio<String>(
                    value: 'Cartão de Crédito',
                    groupValue: selectedPaymentMethod,
                    onChanged: (String? value) {
                      setState(() {
                        selectedPaymentMethod = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Texto(
                    text: 'Cartão de Débito',
                    gradient:
                        LinearGradient(colors: [Colors.black, Colors.black]),
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Radio<String>(
                    value: 'Cartão de Débito',
                    groupValue: selectedPaymentMethod,
                    onChanged: (String? value) {
                      setState(() {
                        selectedPaymentMethod = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  gradient:
                      const LinearGradient(colors: [Colors.grey, Colors.grey]),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Confirmcheckout(
                          makerData: {
                            'nome': widget.makerData['nome'],
                            'empresa': widget.makerData['empresa'],
                            'preco': widget.makerData['preco'],
                            'id': widget.makerData['maker_id'],
                            'forma_pagamento':
                                selectedPaymentMethod, // Adicionado
                          },
                        ),
                      ),
                    );
                  },
                  text: "Checkout",
                ),
              ],
            )
          ],
        ),
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
