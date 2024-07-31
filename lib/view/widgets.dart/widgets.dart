import 'package:flutter/material.dart';

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
      child: const TextField(),
    );
  }
}

class CustomButton extends StatelessWidget {
  final double alturaBotao;
  final double larguroBotao;
  final VoidCallback onPressed;
  final String text;
  final Color corFundo;
  final Color corTexto;
  final double tamanho;

  const CustomButton({
    required this.alturaBotao,
    required this.larguroBotao,
    required this.onPressed,
    required this.text,
    required this.corFundo,
    required this.corTexto,
    required this.tamanho,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: alturaBotao,
      width: larguroBotao,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: corFundo,
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
