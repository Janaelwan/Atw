import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showWrongCredential(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Center(
          child: Icon(
        CupertinoIcons.xmark_circle_fill,
        color: Colors.red,
        size: 50.r,
      )),
      actions: [
        Center(
          child: Text(
            'Wrong Email or password',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18.sp),
          ),
        )
      ],
    ),
  );
}
