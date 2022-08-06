import 'package:flutter/material.dart';
import 'package:news_app/view/widgets/button.dart';
import 'package:sizer/sizer.dart';
import '../../widgets/custom_textField.dart';
import '../choose_topic_screen/choose_topic_screen.dart';


class ChooseCountryScreen extends StatelessWidget {
  const ChooseCountryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Select Your Country'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(hintText: 'India',icon: Icons.close,),
            SizedBox(
              height: 3.h,
            ),
            Expanded(
              child: ListView.builder(
                // shrinkWrap: false,
                  itemCount: 15,
                  itemBuilder: (ctx, index) => ListTile(
                        leading: Icon(Icons.flag),
                        title: Row(
                          children: [
                            Text('IN'),SizedBox(width: 10.w,),
                            Text('Country $index'),
                          ],
                        ),
                        trailing: Icon(Icons.circle,size: 20,)
                      )),
            ),
            SizedBox(height: 2.h,),
            CustomButton(title: "Next",onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx) => ChooseTopicScreen()));
                  },),
                  SizedBox(height: 6,)
          ],
        ),
      ),
    );
  }
}


