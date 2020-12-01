import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              width: 200.0,
              image: AssetImage('assets/band.png'),
            ),
            Text(
              'I may \nnot know what God \n has planned, but I know \nHis plan never fails.\n'
              'I may \nnot know what God \n has planned, but I know \nHis plan never fails.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black87,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: RaisedButton(
                      color: Colors.red,
                      onPressed: () {
                        Navigator.pushNamed(context, '/phone_number');
                      },
                      child: Text(
                          'Register',
                          style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0,),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: RaisedButton(
                      color: Colors.blueAccent,
                      onPressed: () {
                        Navigator.pushNamed(context, '/jobs');
                      },
                      child: Text(
                          'Log In',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
