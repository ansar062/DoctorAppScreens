import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    Key? key,
    required this.textEditingController,
    required this.hint,
    this.hintColor,
    this.textInputType,
    this.inputFormators,
  }) : super(key: key);
  TextEditingController textEditingController;
  String hint;
  Color? hintColor;
  TextInputType? textInputType;
  TextInputFormatter? inputFormators;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  Color lightBoldGray = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return TextFormField(

      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: widget.hintColor ?? lightBoldGray,
          fontSize: 16,
        ),
        hintText: widget.hint,
      ),
      inputFormatters:
          widget.inputFormators == null ? null : [widget.inputFormators!],
      keyboardType: widget.textInputType,
      controller: widget.textEditingController,
    );
  }
}
