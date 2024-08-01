import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomCard extends StatelessWidget {
  final double altura;
  final double largura;
  final Widget child;

  const CustomCard({
    required this.altura,
    required this.largura,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: altura,
        width: largura,
        child: child,
      ),
    );
  }
}

class Texto extends StatelessWidget {
  final double tamanho;
  final String texto;
  final Color cor;

  const Texto({
    required this.tamanho,
    required this.texto,
    required this.cor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(fontSize: tamanho, color: cor),
    );
  }
}

class Campo extends StatelessWidget {
  final Color corDeFundo;

  const Campo({
    required this.corDeFundo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: corDeFundo,
      child: TextField(
        inputFormatters: [
          FilteringTextInputFormatter.deny(RegExp(r'[^\w\s]')),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double tamanho;
  final Color corTexto;
  final Gradient gradient;
  final double alturaBotao;
  final double larguraBotao;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.tamanho = 16.0,
    this.corTexto = Colors.white,
    required this.gradient,
    this.alturaBotao = 50.0,
    this.larguraBotao = 150.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: larguraBotao,
      height: alturaBotao,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: const BorderRadius.all(Radius.circular(38.0)),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: tamanho, color: corTexto),
        ),
      ),
    );
  }
}
