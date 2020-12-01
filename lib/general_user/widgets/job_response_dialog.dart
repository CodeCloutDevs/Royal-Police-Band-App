import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AlertDialog jobResponseAlertDialog (BuildContext context) {
  return AlertDialog(
    title: Text('Respond To This Job..'),
    content: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: RaisedButton(
            color: Colors.red,
              onPressed: () {},
              child: Text(
                  'Available',
                  style: TextStyle(
                      color: Colors.white
                  ),
              )
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: RaisedButton(
            color: Colors.blue,
              onPressed: () {},
              child: Text(
                  'Off-Day',
                  style: TextStyle(
                      color: Colors.white
                  ),
                )
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: RaisedButton(
              color: Colors.orange,
              onPressed: () {},
              child: Text(
                  'Sick',
                  style: TextStyle(
                      color: Colors.white
                  ),
               )
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: RaisedButton(
              color: Colors.black,
              onPressed: () {},
              child: Text(
                  'On-Live',
                  style: TextStyle(
                    color: Colors.white
                  ),
              )
          ),
        )
      ],
    ),
  );
}