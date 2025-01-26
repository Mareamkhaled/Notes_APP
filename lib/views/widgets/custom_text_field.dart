import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, required this.maxLine, this.onSaved, this.onChanged});
  final String hintText;
  final int maxLine;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hintText,
        border: borderCustom(),
        enabledBorder: borderCustom(),
        focusedBorder: borderCustom(Colors.lightBlue)
      ),
      validator: (value) {
        if(value?.isEmpty ??true){
          return "this field is required";
        }
        else{
          return null;
        }
      },
    );
   
  }
   OutlineInputBorder borderCustom([Color? color]){
      return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),borderSide: BorderSide(
          color: color ?? Colors.black
        )
      );
    }
}