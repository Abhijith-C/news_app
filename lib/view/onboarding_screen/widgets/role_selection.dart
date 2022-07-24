import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RoleSelection extends StatelessWidget {
  RoleSelection({Key? key, this.isActive, required this.title, required this.icon}) : super(key: key);
  bool? isActive;
  String title;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.w),
      height: 17.h,
      width: double.infinity,
      decoration: BoxDecoration(
          // color: Colors.red,
          border: Border.all(color: (isActive==null) ? Colors.grey.shade300 : Colors.orangeAccent, width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           CircleAvatar(
            backgroundColor: Color.fromARGB(178, 255, 239, 216),
            radius: 40,
            child: Icon(icon,size: 10.w,color: Colors.orange,),
          ),
          SizedBox(
            width: 3.w,
          ),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "You will need further verification if you are a news agency company",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
