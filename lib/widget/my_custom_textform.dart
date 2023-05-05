
import 'package:flutter/material.dart';

class MyCustomTextForm extends StatelessWidget {
  const MyCustomTextForm({
    super.key,
    this.icon,required this.text,this.keyboard,
  });

  final String text;
  final Widget? icon;
  final TextInputType? keyboard;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.grey,
      keyboardType: keyboard,
      decoration: InputDecoration(
        hintText: text,
        suffixIcon: icon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.7))
        ),
        focusedBorder:  OutlineInputBorder(
           borderRadius: BorderRadius.circular(15)
        )
      ),
    );
  }
}
