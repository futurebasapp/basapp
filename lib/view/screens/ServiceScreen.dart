import 'package:basapp/view/screens/servicePaycheck.dart';
import 'package:basapp/view/widgets.dart/widgets.dart';
import 'package:flutter/material.dart';

class Servicescreen extends StatelessWidget {
  const Servicescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      CustomCard(
        altura: 200,
        largura: 400,
        gradient: const LinearGradient(colors: [Colors.grey, Colors.grey]),
        child: Image.asset('asset/images/basapp.png'),
      ),
      const SizedBox(height: 30),
      Container(
        margin: const EdgeInsets.fromLTRB(30, 0, 15, 45),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.person,
                color: Colors.black,
                size: 60,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 7, left: 10),
                    child: const Texto(
                      gradient:
                          LinearGradient(colors: [Colors.black, Colors.black]),
                      text: 'Alphaville beauty',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Texto(
                          gradient: LinearGradient(
                              colors: [Colors.black, Colors.black]),
                          text: 'Alphaville',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Wrap(
                        spacing: 6,
                        runSpacing: 6,
                        children: [
                          buildTag('Cabelo'),
                          buildTag('Cabelo'),
                          buildTag('Cabelo'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  CustomButton(
                    corTexto: Colors.black,
                    text: 'Botão temporário pra service',
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ServicePaycheck(),
                        ),
                      )
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 221.4, 0),
        child: const Texto(
          gradient: LinearGradient(colors: [Colors.black, Colors.black]),
          text: 'Serviços desse Maker',
          style: TextStyle(fontSize: 15),
        ),
      ),
      Container(
        height: 155,
        width: 400,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(1.2, 0, 7.5, 4.3),
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFFFFF),
                      ),
                      child: const SizedBox(
                        width: 148.3,
                        height: 57.3,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 2.5, 3.6),
                      child: const Texto(
                        gradient: LinearGradient(
                            colors: [Colors.black, Colors.black]),
                        text: 'Serviço do Maker',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              child: const Texto(
                                gradient: LinearGradient(
                                    colors: [Colors.black, Colors.black]),
                                text: 'Cabelo',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        SizedBox(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              child: const Texto(
                                gradient: LinearGradient(
                                    colors: [Colors.black, Colors.black]),
                                text: 'Cabelo',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 4, right: 50),
                        child: Texto(
                            text: 'Localizado em Alphaville',
                            gradient: LinearGradient(
                                colors: [Colors.black, Colors.black]),
                            style: TextStyle(fontSize: 9)))
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(1.2, 0, 7.5, 4.3),
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFFFFF),
                      ),
                      child: const SizedBox(
                        width: 148.3,
                        height: 57.3,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 2.5, 3.6),
                      child: const Texto(
                        gradient: LinearGradient(
                            colors: [Colors.black, Colors.black]),
                        text: 'Serviço do Maker',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              child: const Texto(
                                gradient: LinearGradient(
                                    colors: [Colors.black, Colors.black]),
                                text: 'Cabelo',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        SizedBox(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              child: const Texto(
                                gradient: LinearGradient(
                                    colors: [Colors.black, Colors.black]),
                                text: 'Cabelo',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 4, right: 50),
                        child: Texto(
                            text: 'Localizado em Alphaville',
                            gradient: LinearGradient(
                                colors: [Colors.black, Colors.black]),
                            style: TextStyle(fontSize: 9)))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      //Segunda Linha
      Row(children: [
        Expanded(
          child: Container(
            height: 155,
            width: 400,
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(1.2, 0, 7.5, 4.3),
                          decoration: const BoxDecoration(
                            color: Color(0xFFFFFFFF),
                          ),
                          child: const SizedBox(
                            width: 148.3,
                            height: 57.3,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 2.5, 3.6),
                          child: const Texto(
                            gradient: LinearGradient(
                                colors: [Colors.black, Colors.black]),
                            text: 'Serviço do Maker',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  child: const Texto(
                                    gradient: LinearGradient(
                                        colors: [Colors.black, Colors.black]),
                                    text: 'Cabelo',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            SizedBox(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  child: const Texto(
                                    gradient: LinearGradient(
                                        colors: [Colors.black, Colors.black]),
                                    text: 'Cabelo',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                            padding: EdgeInsets.only(top: 4, right: 50),
                            child: Texto(
                                text: 'Localizado em Alphaville',
                                gradient: LinearGradient(
                                    colors: [Colors.black, Colors.black]),
                                style: TextStyle(fontSize: 9)))
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                //Terceira linha
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(1.2, 0, 7.5, 4.3),
                          decoration: const BoxDecoration(
                            color: Color(0xFFFFFFFF),
                          ),
                          child: const SizedBox(
                            width: 148.3,
                            height: 57.3,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 2.5, 3.6),
                          child: const Texto(
                            gradient: LinearGradient(
                                colors: [Colors.black, Colors.black]),
                            text: 'Serviço do Maker',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  child: const Texto(
                                    gradient: LinearGradient(
                                        colors: [Colors.black, Colors.black]),
                                    text: 'Cabelo',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            SizedBox(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  child: const Texto(
                                    gradient: LinearGradient(
                                        colors: [Colors.black, Colors.black]),
                                    text: 'Cabelo',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                            padding: EdgeInsets.only(top: 4, right: 50),
                            child: Texto(
                                text: 'Localizado em Alphaville',
                                gradient: LinearGradient(
                                    colors: [Colors.black, Colors.black]),
                                style: TextStyle(fontSize: 9)))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
      //Terceira linha
      Row(children: [
        Expanded(
          child: Container(
            height: 155,
            width: 400,
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(1.2, 0, 7.5, 4.3),
                          decoration: const BoxDecoration(
                            color: Color(0xFFFFFFFF),
                          ),
                          child: const SizedBox(
                            width: 148.3,
                            height: 57.3,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 2.5, 3.6),
                          child: const Texto(
                            gradient: LinearGradient(
                                colors: [Colors.black, Colors.black]),
                            text: 'Serviço do Maker',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  child: const Texto(
                                    gradient: LinearGradient(
                                        colors: [Colors.black, Colors.black]),
                                    text: 'Cabelo',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            SizedBox(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  child: const Texto(
                                    gradient: LinearGradient(
                                        colors: [Colors.black, Colors.black]),
                                    text: 'Cabelo',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                            padding: EdgeInsets.only(top: 4, right: 50),
                            child: Texto(
                                text: 'Localizado em Alphaville',
                                gradient: LinearGradient(
                                    colors: [Colors.black, Colors.black]),
                                style: TextStyle(fontSize: 9)))
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(1.2, 0, 7.5, 4.3),
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                        ),
                        child: const SizedBox(
                          width: 148.3,
                          height: 57.3,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 2.5, 3.6),
                        child: const Texto(
                          gradient: LinearGradient(
                              colors: [Colors.black, Colors.black]),
                          text: 'Serviço do Maker',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 5),
                                child: const Texto(
                                  gradient: LinearGradient(
                                      colors: [Colors.black, Colors.black]),
                                  text: 'Cabelo',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          SizedBox(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 5),
                                child: const Texto(
                                  gradient: LinearGradient(
                                      colors: [Colors.black, Colors.black]),
                                  text: 'Cabelo',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                          padding: EdgeInsets.only(top: 4, right: 50),
                          child: Texto(
                              text: 'Localizado em Alphaville',
                              gradient: LinearGradient(
                                  colors: [Colors.black, Colors.black]),
                              style: TextStyle(fontSize: 9)))
                    ],
                  ),
                ))
              ],
            ),
          ),
        )
      ])
    ])));
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
        style: const TextStyle(fontSize: 10),
      ),
    );
  }
}
