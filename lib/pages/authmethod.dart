import 'dart:typed_data';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    required String confirmPassword,
  }) async {
    String res = "Some error occured";
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty ||
          confirmPassword.isNotEmpty) {
        if (password != confirmPassword) {
          res = "Password not matching";
          return res;
        }

        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        await _firestore.collection('users').doc(cred.user!.uid).set({
          'username': username,
          'uid': cred.user!.uid,
          'email': email,
          'followers': [],
          'following': [],
        });

        res = "success";
      } else {
        res = "Please fill all the details";
      }
    } catch (err) {
      res = err.toString().split("]")[1];
    }
    return res;
  }

  Future<String> signInUser({
    required String email,
    required String password,
  }) async {
    String res = "Some error occured";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);

        res = "success";
      } else {
        res = "Please fill all the details";
      }
    } catch (err) {
      res = err.toString().split("]")[1];
    }
    return res;
  }

  Future<String> logOut() async {
    String res = "Some error occured";
    try {
      await _auth.signOut();
      res = "success";
    } catch (err) {
      res = err.toString().split("]")[1];
    }
    return res;
  }
}