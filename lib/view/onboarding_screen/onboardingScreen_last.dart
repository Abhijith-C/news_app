import 'package:flutter/material.dart';
import 'package:news_app/view/onboarding_screen/widgets/role_selection.dart';
import 'package:news_app/view/signUp_screen/signUp_screen.dart';
import 'package:sizer/sizer.dart';

class OnboardingScreenLast extends StatelessWidget {
  const OnboardingScreenLast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        elevation: 0,
        title: Text('Do You?'),
      ),
      body: Container(
        // color: Colors.red,
        padding: EdgeInsets.only(top: 3.h, left: 10, right: 10, bottom: 20),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Choose the role that best describes you right now, whether you are a news agency or a personal.',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.sp),
            ),
            SizedBox(
              height: 3.h,
            ),
            RoleSelection(
              isActive: true,
              title: "News Agency",
              icon: Icons.list,
            ),
            SizedBox(
              height: 3.h,
            ),
            RoleSelection(
              title: "Personal",
              icon: Icons.person,
            ),
            SizedBox(
              height: 3.h,
            ),
            Spacer(),
            SizedBox(
              width: size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (ctx) => SignUpScreen()),
                      (route) => false);
                },
                child: Text("Continue"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
