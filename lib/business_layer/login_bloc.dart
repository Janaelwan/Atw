import 'package:bloc/bloc.dart';
import 'package:demo/business_layer/login_events.dart';
import 'package:demo/business_layer/login_states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  LoginBloc() : super(UserEnterAppState()) {
    on<UserPressLoginButton>(
      (event, emit) async {
        try {
          await _auth.signInWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim(),
          );
          emit(UserAuthed());
        } catch (e) {
          if (kDebugMode) {
            print('Error in Login Bloc ${e.toString()}');
          }
          emit(UserUnAuthed());
        }
      },
    );
  }
}
