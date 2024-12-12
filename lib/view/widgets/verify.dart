import 'package:demo/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../business_layer/login_bloc.dart';
import '../../business_layer/login_states.dart';

Widget verify() {
  return BlocListener<LoginBloc, LoginStates>(
    listener: (context, state) {
      if (state is UserAuthed) {
        debugPrint('UserAuthed state received'); // Debug to confirm state.
        Future.microtask(() {
          showDialog(
            context: context,
            builder: (context) => const AlertDialog(
              title: Icon(
                Icons.verified,
                color: Colors.green,
              ),
              content: Text('You are Logged in!'), // Use content instead of actions for message.
            ),
          );
        });
      }
    },
    child: BlocBuilder<LoginBloc, LoginStates>(
      builder: (context, state) {
        if (state is UserEnterAppState) {
          return const CircularProgressIndicator();
        } else if (state is UserAuthed) {
          return const SizedBox
              .shrink(); // No UI needed, logic handled in listener.
        } else {
          return const Text('ENTA MEEN');
        }
      },
    ),
  );
}
