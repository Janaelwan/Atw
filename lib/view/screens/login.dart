import 'package:demo/business_layer/login_bloc.dart';
import 'package:demo/business_layer/login_events.dart';
import 'package:demo/business_layer/login_states.dart';
import 'package:demo/view/widgets/buildLoginBody.dart';
import 'package:demo/view/widgets/login_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/buildLoginButton.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
          body: Form(key: formKey,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16.h),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      buildHeader(),
                      SizedBox(
                        height: 30.h,
                      ),
                      Center(
                          child: buildLoginBody(
                              BlocProvider.of<LoginBloc>(context).emailController,
                              BlocProvider.of<LoginBloc>(context)
                                  .passwordController)),
                      SizedBox(
                        height: 80.h,
                      ),
                      buildLoginButton(context,formKey),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
  }

}
