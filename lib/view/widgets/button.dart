import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({
    Key? key, required this.title,
    this.onTap
  }) : super(key: key);
  final String title;
  VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(title,style: TextStyle(color: Colors.white),),
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Colors.orange),
            shape:
                MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ))),
      ),
    );
  }
}