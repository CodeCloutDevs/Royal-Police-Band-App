import 'package:flutter/material.dart';

class CompleteProfile extends StatelessWidget {

  final List<String> _jobTitles = [
    'Ground',
    'Supervisor',
    'Assistant Inspector',
    'Inspector',
    'Band Master'
  ];
  
  String _selectedTitle = 'Job Status';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
            'Complete Profile',
            style: TextStyle(
              color: Colors.black
            ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.grey[400],
                    radius: 40.0,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                          Icons.camera_enhance,
                          color: Colors.grey[600],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Text(
                    'Upload your profile photo.',
                    style: TextStyle(
                        color: Colors.black87,
                        letterSpacing: 2.5
                    ),
                  ),
                  SizedBox(height: 40.0,),
                  Form(
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'First Name',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black
                              )
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black
                              )
                            )
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Last Name',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black
                              )
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black
                              )
                            )
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        DropdownButtonFormField(
                          onChanged: (value) {
                            _selectedTitle = value;
                          },
                          items: _jobTitles.map((title) {
                            return DropdownMenuItem(
                                value: title,
                                child: Text(title)
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 40.0,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.blueAccent,
                      child: Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white
                          ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Have an account? ',
                        style: TextStyle(
                            letterSpacing: 2.5
                        ),
                      ),
                      Text(
                        'Log In.',
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
      ),
    );
  }
}
