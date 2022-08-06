import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key, required this.hintText, required this.icon
  }) : super(key: key);
  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      // controller: searchCtrl,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        suffixIcon: Icon(icon),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(16),
        // fillColor: Colors.grey.shade300,
      ),
    );
  }
}