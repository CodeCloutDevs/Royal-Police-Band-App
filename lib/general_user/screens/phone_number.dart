import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:royal_police_band/services/auth.dart';

class PhoneNumber extends StatelessWidget {
  final _phoneNumber = TextEditingController();
  final AuthService _authService = new AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                SizedBox(height: 50.0,),
                Image(
                  width: 100.0,
                  image: AssetImage('assets/band.png'),
                ),
                Text(
                    'Welcome',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold
                    ),
                ),
                Text(
                  'Please Sign - in to continue',
                  style: TextStyle(
                    color: Colors.black87,
                    letterSpacing: 2.5
                  ),
                ),
                SizedBox(height: 40.0,),
                Form(
                  child: TextFormField(
                    controller: _phoneNumber,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
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
                  onPressed: () async {
                   dynamic result = await _authService.signInWithPhoneNumber(_phoneNumber.text.trim(), context);

                   if (result == null){
                     print('Error while logging');
                   } else {
                     Navigator.pushNamed(context, '/jobs');
                   }
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
