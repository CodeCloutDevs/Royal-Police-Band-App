import 'package:flutter/material.dart';
import 'package:royal_police_band/models/job_response_model.dart';
import 'package:royal_police_band/general_user/widgets/job_response_dialog.dart';

class JobDetails extends StatefulWidget {
  @override
  _JobDetailsState createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {

  @override
  Widget build(BuildContext context) {
   Map jobDetails = ModalRoute.of(context).settings.arguments;

   List<JobResponse> jobResponseList = [
     JobResponse(username: 'John Doe', status: 'Available'),
     JobResponse(username: 'Jane Doe', status: 'Off-Day'),
     JobResponse(username: 'Jane Doe', status: 'Sick'),
     JobResponse(username: 'John Doe', status: 'On-Live')
   ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Job Details'),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) => jobResponseAlertDialog(context)
              );
            },
            icon: Icon(
                Icons.add_circle,
                color: Colors.white,),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width,
            color: Colors.blueAccent,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    jobDetails['title'],
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0
                    ),
                  ),
                  Text(
                    jobDetails['uniform'],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        jobDetails['location'],
                        style: TextStyle(
                            color: Colors.white
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.access_time,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        jobDetails['dateAndTime'],
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  )
                ]
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemCount: jobResponseList.length,
                separatorBuilder: (_, __) => Divider(),
                itemBuilder: (_, index)  {
                  return ListTile(
                    title: Text(jobResponseList[index].username),
                    subtitle: Text(jobResponseList[index].status),
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
