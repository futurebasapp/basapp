import 'package:basapp/view/screens/confirmCheckout.dart';
import 'package:basapp/view/screens/schedule.dart';
import 'package:basapp/view/widgets.dart/widgets.dart';
import 'package:flutter/material.dart';

class ServicePaycheck extends StatelessWidget {
  const ServicePaycheck({super.key});

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
              child: const Align(
                alignment: Alignment.topLeft,
                child: Texto(
                  gradient:
                      LinearGradient(colors: [Colors.black, Colors.black]),
                  text: 'Tratamento para Cabelo',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            const Row(
              children: [
                SizedBox(width: 20),
                Icon(
                  Icons.abc,
                  color: Colors.green,
                ),
                Texto(
                  gradient:
                      LinearGradient(colors: [Colors.black, Colors.black]),
                  text: 'Feito por AlphaVille Beauty',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 30),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: [
                    buildTag('Cabelo'),
                    buildTag('Cabelo'),
                    buildTag('Cabelo'),
                    const SizedBox(width: 20),
                    buildTag('R\$199,99'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Texto(
                    text: "Descrição Enorme do produto",
                    gradient:
                        LinearGradient(colors: [Colors.black, Colors.black]),
                    style: TextStyle(fontSize: 20))
              ],
            ),
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
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 2, 11, 0),
                                child: const Icon(Icons.add),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.fromLTRB(0, 2, 12.1, 0),
                                child: const Text(
                                  '2',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                child: const Icon(Icons.remove),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: const Text(
                            '\$399,90',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                        SizedBox(
                            child: CustomButton(
                                larguraBotao: 200,
                                corTexto: Colors.black,
                                text: "Selecione horário",
                                onPressed: () => {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const schedule(),
                                        ),
                                      )
                                    })),
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
            Row(children: [
              const SizedBox(width: 32),
              SizedBox(
                width: 329,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 7, 0),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF),
                            ),
                            child: SizedBox(
                              width: 40,
                              height: 40,
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(5, 10, 5, 10),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    const SizedBox(
                                      width: 30,
                                      height: 20,
                                      child: SizedBox(
                                          width: 30,
                                          height: 20,
                                          child: Icon(Icons.money_off)),
                                    ),
                                    Positioned(
                                      bottom: -10,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                        ),
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          padding: const EdgeInsets.fromLTRB(
                                              5, 10, 5, 10),
                                          child: const SizedBox(
                                              width: 30,
                                              height: 20,
                                              child: Icon(Icons.money)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                            child: const Texto(
                                text: "Dinheiro",
                                gradient: LinearGradient(
                                    colors: [Colors.black, Colors.black]),
                                style: TextStyle(fontSize: 25))),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFFFFF),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const SizedBox(
                                    width: 10,
                                    height: 10,
                                  ),
                                ),
                                Positioned(
                                  bottom: -5,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFD9D9D9),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      padding:
                                          const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: const SizedBox(
                                          width: 10,
                                          height: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
            SizedBox(
              width: 329,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 7, 0),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFFFFFFF),
                          ),
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  const SizedBox(
                                    width: 30,
                                    height: 20,
                                    child: SizedBox(
                                        width: 30,
                                        height: 20,
                                        child: Icon(Icons.credit_card)),
                                  ),
                                  Positioned(
                                    bottom: -10,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        padding: const EdgeInsets.fromLTRB(
                                            5, 10, 5, 10),
                                        child: const SizedBox(
                                            width: 30,
                                            height: 20,
                                            child: Icon(Icons.credit_card)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                          child: const Texto(
                              text: "Cartão de Crédito",
                              gradient: LinearGradient(
                                  colors: [Colors.black, Colors.black]),
                              style: TextStyle(fontSize: 25))),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const SizedBox(
                                  width: 10,
                                  height: 10,
                                ),
                              ),
                              Positioned(
                                bottom: -5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFD9D9D9),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: const SizedBox(
                                        width: 10,
                                        height: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 329,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 7, 0),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFFFFFFF),
                          ),
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  const SizedBox(
                                    width: 30,
                                    height: 20,
                                    child: SizedBox(
                                        width: 30,
                                        height: 20,
                                        child: Icon(Icons.credit_card_rounded)),
                                  ),
                                  Positioned(
                                    bottom: -10,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        padding: const EdgeInsets.fromLTRB(
                                            5, 10, 5, 10),
                                        child: const SizedBox(
                                            width: 30,
                                            height: 20,
                                            child: Icon(
                                                Icons.credit_card_rounded)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                          child: const Texto(
                              text: "Cartão de Débito",
                              gradient: LinearGradient(
                                  colors: [Colors.black, Colors.black]),
                              style: TextStyle(fontSize: 25))),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const SizedBox(
                                  width: 10,
                                  height: 10,
                                ),
                              ),
                              Positioned(
                                bottom: -5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFD9D9D9),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: const SizedBox(
                                        width: 10,
                                        height: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                    gradient: const LinearGradient(
                        colors: [Colors.grey, Colors.grey]),
                    text: 'Checkout',
                    onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Confirmcheckout(),
                            ),
                          )
                        },
                    corTexto: Colors.black)
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
