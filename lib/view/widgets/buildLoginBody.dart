import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildLoginBody(
    TextEditingController email, TextEditingController password) {
  return Padding(
    padding: EdgeInsets.all(12.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: TextStyle(color: Colors.black, fontSize: 20.sp),
        ),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your email';
            }
            if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
              return 'Please enter a valid email';
            }
            return null;
          },
          controller: email,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            hintText: 'Your Email',
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'Password',
          style: TextStyle(fontSize: 20.sp, color: Colors.black),
        ),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            if (value.length < 6) {
              return 'Password must be at least 6 characters';
            }
            return null; // Input is valid
          },
          controller: password,
          obscureText: true,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
              hintText: 'Password',
              suffixIcon: const Icon(Icons.remove_red_eye)),
        ),
      ],
    ),
  );
}
