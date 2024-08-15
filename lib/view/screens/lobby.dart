import 'package:basapp/view/screens/Agenda.dart';
import 'package:basapp/view/screens/searchServices.dart';
import 'package:basapp/view/widgets.dart/widgets.dart';
import 'package:flutter/material.dart';

class lobby extends StatelessWidget {
  const lobby({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomCard(
              altura: 200,
              largura: 400,
              gradient:
                  const LinearGradient(colors: [Colors.white, Colors.white]),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Image.asset(
                        "asset/images/basapp.png",
                        width: 200,
                        height: 100,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 100, left: 80),
                    child: Texto(
                      gradient:
                          LinearGradient(colors: [Colors.black, Colors.black]),
                      text: 'Qual Serviço maker \n você procura hoje?',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            const Campo(
              hintText: "Search",
              backgroundColor: Colors.grey,
              borderRadius: 30,
              icon: Icon(Icons.search, color: Colors.black),
            ),
            const Padding(padding: EdgeInsets.only(top: 400)),
            CustomButton(
                text: 'Pesquisar',
                onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Searchservices()),
                      )
                    },
                gradient: const LinearGradient(
                    colors: [Colors.purple, Colors.purple])),
            Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFD9D9D9),
                ),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(35.3, 17, 35.7, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 50,
                        height: 48,
                        child: SizedBox(
                          width: 35.4,
                          height: 36,
                          child: Icon(
                            Icons.person,
                            size: 36,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 1.3, 0, 1.3),
                        child: SizedBox(
                          width: 40,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: const SizedBox(
                                  width: 13.3,
                                ),
                              ),
                              SizedBox(
                                  child: IconButton(
                                iconSize: 30,
                                icon: const Icon(Icons.calendar_month),
                                onPressed: () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Agenda(),
                                    ),
                                  )
                                },
                              )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
