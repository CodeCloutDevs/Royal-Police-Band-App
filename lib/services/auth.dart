import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:royal_police_band/general_user/screens/phone_number.dart';
import 'package:royal_police_band/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  //create a custom user
  User _userFromFirebaseUser (FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  //auth change stream
  Stream<User> get user {
    return _auth.onAuthStateChanged
        .map(_userFromFirebaseUser);
  }

  //sign in with phone number
  Future signInWithPhoneNumber (String number, BuildContext context) async {
    final _codeController = TextEditingController();
    try {
      await _auth.verifyPhoneNumber(
          phoneNumber: number,
          timeout: Duration(seconds: 60),
          verificationCompleted: (AuthCredential authCredential) async {
            Navigator.of(context).pop();
            AuthResult authResult = await _auth.signInWithCredential (authCredential);
            FirebaseUser user = authResult.user;
            return _userFromFirebaseUser(user);
          },
          verificationFailed: (AuthException authException) {
            print(authException.message);
          },
          codeSent: (String verificationId, [int forceResendingToken]) {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => AlertDialog(
                  title: Text('Enter SMS Verification Code'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextFormField(
                        controller: _codeController,
                      )
                    ],
                  ),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () async {
                        final _code = _codeController.text.trim();
                        AuthCredential credential = PhoneAuthProvider.getCredential(verificationId: verificationId, smsCode: _code);
                        AuthResult result = await _auth.signInWithCredential(credential);
                        FirebaseUser user = result.user;
                        return _userFromFirebaseUser(user);
                      },
                      child: Text('Confirm'),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Cancel'),
                    )
                  ],
                )
            );
          },
          codeAutoRetrievalTimeout: (String verificationId){
            verificationId = verificationId;
            print(verificationId);
            print("Timeout");
          }
    );
    }catch (error) {
      print(error.toString());
    }
  }

  //sign out
}