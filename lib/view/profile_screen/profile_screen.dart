import 'package:flutter/material.dart';
import 'package:news_app/view/profile_screen/widgets/account_create_popup.dart';
import 'package:news_app/view/widgets/button.dart';
import 'package:sizer/sizer.dart';

import '../widgets/input_tile.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text('Fill Your Profile'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 80,
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.orange.shade900,
                        child: Icon(Icons.edit),
                      ))
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              signUp_widget("Username", _nameController),
              SizedBox(
                height: 2.h,
              ),
              signUp_widget("Full Name", _nameController),
              SizedBox(
                height: 2.h,
              ),
              signUp_widget("Email", _nameController),
              SizedBox(
                height: 2.h,
              ),
              signUp_widget("Password", _nameController),
              Spacer(),
              CustomButton(
                title: 'Continue',
                onTap: () async {
                  await showAccountCreateSuccessAlert(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
