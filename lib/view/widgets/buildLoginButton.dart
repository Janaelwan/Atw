import 'package:demo/business_layer/login_bloc.dart';
import 'package:demo/business_layer/login_events.dart';
import 'package:demo/business_layer/login_states.dart';
import 'package:demo/view/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dialog_wrong_credentials.dart';

Widget buildLoginButton(BuildContext context, GlobalKey<FormState> formKey) {
  return Padding(
    padding: EdgeInsets.all(10.h),
    child: Column(
      children: [
        GestureDetector(
          onTap: () {
            if (formKey.currentState!.validate()) {
              //Ensure authenatcation
              BlocProvider.of<LoginBloc>(context).add(UserPressLoginButton());
              if (BlocProvider.of<LoginBloc>(context).state is UserAuthed) {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              }
              else {
                showWrongCredential(context);
              }

            }
            else{

            }
          },
          child: Container(
            height: 60.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                'Sign in',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Row(
          children: [
            Text(
              'Do not have an account',
              style: TextStyle(color: Colors.grey, fontSize: 16.sp),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp),
                ))
          ],
        )
      ],
    ),
  );
}
