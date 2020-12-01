import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CodeVerification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Code Verification',
            style: TextStyle(
              color: Colors.black
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                SizedBox(height: 30.0,),
                Text(
                  'Password',
                  style: TextStyle(
                      letterSpacing: 2.0,
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'password sent through sms',
                  style: TextStyle(
                      color: Colors.black87,
                      letterSpacing: 2.5
                  ),
                ),
                SizedBox(height: 40.0,),
                Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0,),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/complete_profile');
                  },
                  child: Icon(Icons.arrow_forward),
                  backgroundColor: Colors.blueAccent,
                ),
                SizedBox(height: 70.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'I have ',
                      style: TextStyle(
                          letterSpacing: 2.5
                      ),
                    ),
                    Text(
                      'an account.',
                      style: TextStyle(
                          color: Colors.red,
                          letterSpacing: 2.5
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
