import 'package:flutter/material.dart';
import 'package:news_app/view/choise_screen/choose_news_source_screen/choose_news_source_screen.dart';
import 'package:news_app/view/profile_screen/profile_screen.dart';
import 'package:news_app/view/widgets/button.dart';
import 'package:news_app/view/widgets/custom_textField.dart';
import 'package:sizer/sizer.dart';

class ChooseTopicScreen extends StatelessWidget {
  const ChooseTopicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Choose Your Topics'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(hintText: 'Search', icon: Icons.search),
            SizedBox(
              height: 3.h,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 10,
                itemBuilder: (ctx, index) {
                  return Stack(
                    children: [
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange),
                            image: DecorationImage(
                                image: AssetImage('assets/images/animal.jpg'),
                                fit: BoxFit.cover),
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      Positioned(
                        bottom: 30,
                        left: 20,
                        child: Text(
                          "index: $index",
                          style:
                              TextStyle(fontSize: 15.sp, color: Colors.white),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 15,
                        child: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            CustomButton(
              title: 'Next',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => ProfileScreen(),
                    ));
              },
            ),
            SizedBox(
              height: 6,
            )
          ],
        ),
      ),
    );
  }
}
