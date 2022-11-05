import 'package:flutter/material.dart';
import 'package:news_app/view/widgets/button.dart';
import 'package:sizer/sizer.dart';

import '../choise_screen/choose_topic_screen/choose_topic_screen.dart';
import '../widgets/input_tile.dart';


class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 60.w,
              height: 60.w,
            ),
            Text(
              "Create an Account",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
            ),
            Form(
                child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  signUp_widget("Email", _emailController),
                  SizedBox(
                    height: 2.h,
                  ),
                  signUp_widget("Password", _emailController),
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                      Text('Remember me'),
                    ],
                  ),
                  CustomButton(title: "Continue",onTap: () {
                    Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (ctx) => ChooseTopicScreen()),
              (route) => false);
                  },),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text("or continue with"),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      social_icon('Facebook', Image.asset('assets/images/facebook.png',width: 25,)),
                      SizedBox(
                        width: 22,
                      ),
                      social_icon('Google', Image.asset('assets/images/google.png',width: 25,))
                    ],
                  ),
                  SizedBox(height: 3.h,),
                  RichText(
                        text: TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(color: Colors.black,fontSize: 12.sp),
                          children: <TextSpan>[
                            TextSpan(text: ' Sign in', style: TextStyle(color: Colors.orange,fontSize: 12.sp)),
                          ],
                        ),
                      )
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }

  Container social_icon(String title, Widget icon) {
    return Container(
      width: 140,
      height: 50,
      // padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      decoration: BoxDecoration(
          // color: Colors.red,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
         const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 12.sp),
          )
        ],
      ),
    );
  }

  
}


