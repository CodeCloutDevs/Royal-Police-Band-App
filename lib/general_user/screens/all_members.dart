import 'package:flutter/material.dart';
import 'package:royal_police_band/models/user.dart';

class AllMembers extends StatefulWidget {
  @override
  _AllMembersState createState() => _AllMembersState();
}

class _AllMembersState extends State<AllMembers> {

  List<User> _users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Members'),
      ),
      body:  ListView.builder(
          itemCount: _users.length,
          itemBuilder: (_, index) {
            return Card(
              child: ListTile(
                title: Text('Lihle Fakudze'),
                subtitle: Text('Available'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.call),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/guy.png'),
                ),
              ),
            );
          }
      ),
    );
  }
}
