import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:news_app/view/main_screen.dart';
import 'package:news_app/view/widgets/button.dart';
import 'package:sizer/sizer.dart';

showAccountCreateSuccessAlert(BuildContext context) => showDialog(
    context: context,
    builder: (ctx) => Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0)), //this right here
          child: Container(
            height: 350.0,
            width: 300.0,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.verified,
                        color: Colors.orange,
                        size: 25.w,
                      )),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '''Great!
Your Account has been created successfully''',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.red, fontSize: 18, height: 1.5),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  CustomButton(
                    title: 'Go to Home',
                    onTap: () => Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainScreen(),
                        ),
                        (route) => false),
                  )
                ],
              ),
            ),
          ),
        ));
