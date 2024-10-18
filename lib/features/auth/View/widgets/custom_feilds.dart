import 'package:flutter/material.dart';

class CustomFeilds extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isobsecureText;
  const CustomFeilds({super.key, required this.hintText, required this.controller, this.isobsecureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,

      decoration: InputDecoration(
        hintText: hintText,
        
      ),
      obscureText: isobsecureText,
      validator: (value) {
        if(value!.trim().isEmpty){
          return "$hintText is missing!";
        }
        else{
          return null;
        }
      },
    );
  }
}