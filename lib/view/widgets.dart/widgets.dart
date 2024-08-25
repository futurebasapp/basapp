import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double altura;
  final double largura;
  final Widget child;
  final Gradient gradient;
  const CustomCard({
    required this.altura,
    required this.largura,
    required this.child,
    super.key,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(12),
        ),
        width: largura,
        height: altura,
        child: child,
      ),
    );
  }
}

class Texto extends StatelessWidget {
  final String text;
  final Gradient gradient;
  final TextStyle style;

  const Texto({
    super.key,
    required this.text,
    required this.gradient,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style.copyWith(color: Colors.white),
      ),
    );
  }
}

class Campo extends StatelessWidget {
  final String hintText;
  final EdgeInsetsGeometry padding;
  final Color backgroundColor;
  final double borderRadius;
  final List<BoxShadow> boxShadow;
  final Icon? icon;
  final IconButton? suffixIcon;
  final TextEditingController? controller;
  const Campo({
    super.key,
    required this.hintText,
    this.padding = const EdgeInsets.all(16),
    this.backgroundColor = const Color(0xFFE0E0E0),
    this.borderRadius = 12.0,
    this.boxShadow = const [
      BoxShadow(
        color: Colors.grey,
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3),
      ),
    ],
    this.icon,
    this.controller,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          suffixIcon: icon,
        ),
      ),
    );
  }
}

class GradientIcon extends StatelessWidget {
  final IconData? icon;
  final double size;
  final Gradient gradient;

  const GradientIcon({
    super.key,
    required this.size,
    required this.gradient,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return gradient
            .createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height));
      },
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double tamanho;
  final Color corTexto;
  final Gradient? gradient;
  final double alturaBotao;
  final double larguraBotao;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.tamanho = 16.0,
    this.corTexto = Colors.white,
    this.gradient,
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
