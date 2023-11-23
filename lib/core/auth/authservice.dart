import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

enum AuthMode { login, register, phone }

extension on AuthMode {
  String get label => this == AuthMode.login
      ? 'Sign in'
      : this == AuthMode.phone
          ? 'Sign in'
          : 'Register';
}

class xAuth {
  // doing all type of auth functionality here
  //auth to cover
  // 1.google
  // 2.basic email
  // 3.phone number
  final FirebaseAuth _fireBaseAuth =
      FirebaseAuth.instance;

  //to store user detail to firestore..
  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  final AuthMode mode = AuthMode.login;

  // GlobalKey<FormState> formKey = GlobalKey<FormState>(); -- get controller over any form

  Future<void> emailAuth(GlobalKey<FormState> key,
      String email, String password) async {
    if (key.currentState?.validate() ?? false) {
      if (mode == AuthMode.login) {
        await _fireBaseAuth
            .signInWithEmailAndPassword(
                email: email, password: password);
      } else if (mode == AuthMode.register) {
        await _fireBaseAuth
            .createUserWithEmailAndPassword(
                email: email, password: password);
      }
    }
  }

  Future<void> googleAuth() async {
    //get the user
    final googleUser =
        await GoogleSignIn().signIn();

    // start google auth from user
    final googleAuth =
        await googleUser?.authentication;

    if (googleAuth != null) {
      final cred = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken);

      await _fireBaseAuth
          .signInWithCredential(cred);
    }
  }
}
