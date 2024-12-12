import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildHeader() {
  return Container(
    padding: EdgeInsets.all(12.h),
    child: Column(
      children: [
        Text(
          'Let\'s Sign you in.',
          style: TextStyle(
              fontSize: 30.sp,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'Welcome back.\n You \'ve ben missed!',
          style: TextStyle(
            fontSize: 27.sp,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
