import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OnboardingScreenWidget extends StatelessWidget {
   OnboardingScreenWidget({Key? key, required this.image, required this.subTitle, required this.title}) : super(key: key);
   final String title;
   final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          Container(
              width: size.width,
              height: size.height,
              child: (image == null) ? Center(child: CircularProgressIndicator(),) : Image.asset(
                image ,
                fit: BoxFit.cover,
              )),
          Positioned(
            bottom: 43.w,
            child: SizedBox(
              width: size.width,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16),
                child: RichText(
                  text:  TextSpan(
                    text: title,
                    style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    children: <TextSpan>[
                      TextSpan(
                          text: subTitle,
                          style: TextStyle(color: Colors.orange)),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
