import 'package:flutter/material.dart';

class ChooseNewsSourceScreen extends StatelessWidget {
  const ChooseNewsSourceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Choose Your News Source'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }
}