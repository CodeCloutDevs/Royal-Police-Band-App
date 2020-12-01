import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:royal_police_band/models/job_model.dart';
import 'package:royal_police_band/general_user/widgets/drawer.dart';

class Jobs extends StatefulWidget {
  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {

  final List<Job> jobList = [
    Job(title: 'This should display the title of the job.', location: 'Manzini, Lobamba Lomdzala (Mahlanya)', dateAndTime: 'THU, 29 Oct - 19:00', uniform: 'This will show more details of the uniform that should be woren.'),
    Job(title: 'This should display the title of the job.', location: 'Manzini, Lobamba Lomdzala (Mahlanya)', dateAndTime: 'THU, 29 Oct - 19:00', uniform: 'This will show more details of the uniform that should be woren.'),
    Job(title: 'This should display the title of the job.', location: 'Manzini, Lobamba Lomdzala (Mahlanya)', dateAndTime: 'THU, 29 Oct - 19:00', uniform: 'This will show more details of the uniform that should be woren.'),
    Job(title: 'This should display the title of the job.', location: 'Manzini, Lobamba Lomdzala (Mahlanya)', dateAndTime: 'THU, 29 Oct - 19:00', uniform: 'This will show more details of the uniform that should be woren.'),
    Job(title: 'This should display the title of the job.', location: 'Manzini, Lobamba Lomdzala (Mahlanya)', dateAndTime: 'THU, 29 Oct - 19:00', uniform: 'This will show more details of the uniform that should be woren.'),
    Job(title: 'This should display the title of the job.', location: 'Manzini, Lobamba Lomdzala (Mahlanya)', dateAndTime: 'THU, 29 Oct - 19:00', uniform: 'This will show more details of the uniform that should be woren.'),
    Job(title: 'This should display the title of the job.', location: 'Manzini, Lobamba Lomdzala (Mahlanya)', dateAndTime: 'THU, 29 Oct - 19:00', uniform: 'This will show more details of the uniform that should be woren.'),
    Job(title: 'This should display the title of the job.', location: 'Manzini, Lobamba Lomdzala (Mahlanya)', dateAndTime: 'THU, 29 Oct - 19:00', uniform: 'This will show more details of the uniform that should be woren.'),
    Job(title: 'This should display the title of the job.', location: 'Manzini, Lobamba Lomdzala (Mahlanya)', dateAndTime: 'THU, 29 Oct - 19:00', uniform: 'This will show more details of the uniform that should be woren.'),
    Job(title: 'This should display the title of the job.', location: 'Manzini, Lobamba Lomdzala (Mahlanya)', dateAndTime: 'THU, 29 Oct - 19:00', uniform: 'This will show more details of the uniform that should be woren.'),
    Job(title: 'This should display the title of the job.', location: 'Manzini, Lobamba Lomdzala (Mahlanya)', dateAndTime: 'THU, 29 Oct - 19:00', uniform: 'This will show more details of the uniform that should be woren.'),
    Job(title: 'This should display the title of the job.', location: 'Manzini, Lobamba Lomdzala (Mahlanya)', dateAndTime: 'THU, 29 Oct - 19:00', uniform: 'This will show more details of the uniform that should be woren.'),
    Job(title: 'This should display the title of the job.', location: 'Manzini, Lobamba Lomdzala (Mahlanya)', dateAndTime: 'THU, 29 Oct - 19:00', uniform: 'This will show more details of the uniform that should be woren.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: mainDrawer(context),
      appBar: AppBar(
        title: Text('Jobs'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
                Icons.add_comment,
                color: Colors.white,),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
                Icons.settings,
                color: Colors.white,),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: jobList.length,
          itemBuilder: (_, index) {
            return Card(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/job_details', arguments: {
                    'title': jobList[index].title,
                    'location': jobList[index].location,
                    'dateAndTime': jobList[index].dateAndTime,
                    'uniform': jobList[index].uniform
                  });
                },
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                          jobList[index].title,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0
                          ),
                      ),
                      Text(
                          jobList[index].uniform,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                      SizedBox(height: 5.0),
                      Row(
                        children: <Widget>[
                          Icon(
                              Icons.location_on,
                            color: Colors.blueAccent,
                          ),
                          SizedBox(width: 5.0,),
                          Text(
                              jobList[index].location,
                              style: TextStyle(
                                color: Colors.blueAccent
                              ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                              Icons.access_time,
                              color: Colors.blueAccent,
                          ),
                          SizedBox(width: 5.0,),
                          Text(
                              jobList[index].dateAndTime,
                              style: TextStyle(
                                color: Colors.red
                              ),
                          )
                        ],
                      )
                    ]
                  ),
                ),
              )
            );
      }),
    );
  }
}
