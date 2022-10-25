import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.text, this.fsize, this.color,this.fw})
      : super(key: key);
  final String text;
  final Color? color;
  final double? fsize;
  final FontWeight? fw;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color != null ? color : Color.fromRGBO(160, 162, 179, 1),
        fontSize: fsize ?? 16,
        fontWeight: fw,
       ),
    );
  }
}
