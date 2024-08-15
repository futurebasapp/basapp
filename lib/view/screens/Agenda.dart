import 'package:basapp/view/screens/Agendados.dart';
import 'package:basapp/view/screens/Antigos.dart';
import 'package:basapp/view/widgets.dart/widgets.dart';
import 'package:flutter/material.dart';

class Agenda extends StatefulWidget {
  const Agenda({super.key});

  @override
  _Agenda createState() => _Agenda();
}

class _Agenda extends State<Agenda> {
  bool isAgendadoVisible = false;
  bool isAntigosVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomCard(
              altura: 100,
              largura: 400,
              gradient:
                  const LinearGradient(colors: [Colors.white, Colors.white]),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: CustomButton(
                        onPressed: () {
                          setState(() {
                            isAgendadoVisible = true;
                            isAntigosVisible = false;
                          });
                        },
                        text: 'Agendados',
                        alturaBotao: 50,
                        larguraBotao: 205,
                        corTexto: Colors.black,
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.white, Colors.white, Colors.white],
                        ),
                        tamanho: 30,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 2.0),
                      child: CustomButton(
                        onPressed: () {
                          setState(() {
                            isAgendadoVisible = false;
                            isAntigosVisible = true;
                          });
                        },
                        text: 'Antigos',
                        alturaBotao: 50,
                        larguraBotao: 205,
                        corTexto: Colors.black,
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.white, Colors.white],
                        ),
                        tamanho: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 30)),
            if (isAgendadoVisible)
              SizedBox(
                height: MediaQuery.of(context).size.height - 300,
                child: const Agendados(),
              ),
            if (isAntigosVisible)
              SizedBox(
                height: MediaQuery.of(context).size.height - 300,
                child: const Antigos(),
              ),
          ],
        ),
      ),
    );
  }
}
