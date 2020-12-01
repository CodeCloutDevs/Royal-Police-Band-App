import 'package:flutter/material.dart';

Drawer mainDrawer (BuildContext context) {
  return Drawer(
    child: Container(
      color: Colors.blue[900],
      child: Column(
        children: <Widget>[
          SizedBox(height: 30.0,),
          CircleAvatar(
            radius: 60.0,
            backgroundImage: AssetImage('assets/guy.png'),
            backgroundColor: Colors.white54,
          ),
          SizedBox(height: 20.0),
          Text(
            'Lihle Fakudze',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                    onPressed: () {},
                    child: Text(
                        'Home',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0
                        ),
                    )
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/all_members');
                    },
                    child: Text(
                        'All Members',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0
                        ),
                    )
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                    onPressed: () {},
                    child: Text(
                        'Ground',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0
                        ),
                    )
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                    onPressed: () {},
                    child: Text(
                        'Supervisors',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0
                        ),
                    )
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                    onPressed: () {},
                    child: Text(
                        'Assistant Inspectors',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0
                        ),
                    )
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                    onPressed: () {},
                    child: Text(
                        'Inspectors',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0
                        ),
                    )
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                    onPressed: () {},
                    child: Text(
                        'About',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0
                        ),
                    )
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}