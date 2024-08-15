import 'package:basapp/view/screens/ServiceScreen.dart';
import 'package:basapp/view/widgets.dart/widgets.dart';
import 'package:flutter/material.dart';

class Searchservices extends StatelessWidget {
  const Searchservices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(children: [
          CustomCard(
            altura: 200,
            largura: 400,
            gradient:
                const LinearGradient(colors: [Colors.white, Colors.white]),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 100, left: 40, right: 40),
                  child: Campo(
                    hintText: "Search",
                    backgroundColor: Colors.grey,
                    borderRadius: 30,
                    icon: Icon(Icons.search, color: Colors.black),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 30,
                        child: CustomButton(
                          text: "Maker",
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Servicescreen()),
                            )
                          },
                          gradient: const LinearGradient(
                              colors: [Color(0xFFD9D9D9), Color(0xFFD9D9D9)]),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 150,
                        height: 30,
                        child: CustomButton(
                          text: "Services",
                          onPressed: () => {},
                          gradient: const LinearGradient(
                              colors: [Color(0xFFD9D9D9), Color(0xFFD9D9D9)]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //Primeira Linha
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
                              margin:
                                  const EdgeInsets.fromLTRB(1.2, 0, 7.5, 4.3),
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
                                        gradient: LinearGradient(colors: [
                                          Colors.black,
                                          Colors.black
                                        ]),
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
                                        gradient: LinearGradient(colors: [
                                          Colors.black,
                                          Colors.black
                                        ]),
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
                              margin:
                                  const EdgeInsets.fromLTRB(1.2, 0, 7.5, 4.3),
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
                                        gradient: LinearGradient(colors: [
                                          Colors.black,
                                          Colors.black
                                        ]),
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
                                        gradient: LinearGradient(colors: [
                                          Colors.black,
                                          Colors.black
                                        ]),
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
                    ),
                  ),
                ],
              ),
            )),
          ])
        ])));
  }
}
