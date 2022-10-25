import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.func,
    this.color,
    required this.text,
    this.height = 0.075,
    this.width = 0.88,
  }) : super(key: key);
  String text;
  Function func;
  Color? color;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    Color buttonColor = Color.fromARGB(255, 69, 120, 190);
    return InkWell(
      onTap: () {
        func();
      },
      child: Container(
        width: Get.width * width,
        height: Get.height * height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: color ?? buttonColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
