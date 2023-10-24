
import 'package:flutter/material.dart';

void main() {
  runApp(MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Job's Application", style: TextStyle(color: Colors.white),), backgroundColor: Colors.black,
        
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: ProfileBody(),
        ),
      ),
    );
  }
}

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.black,
            padding: EdgeInsets.all(16.0), alignment: Alignment.center, 
            child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50, 
                  backgroundImage: AssetImage('assets/images/job.jpg')
                ),
                SizedBox(width: 16),
                Text('Job Russel Destor', 
                  style: TextStyle(fontSize: 25, fontWeight:FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
          ),
        Divider( color:Colors.black,),
          SizedBox(height: 20),
          InfoSection(
            icon: Icons.email,
            label: 'Email',
            data: 'destorjob@gmail.com',
            info:  '',
          ),
          InfoSection(
            icon: Icons.location_city,
            label: 'Location',
            data: 'Brgy Tanza Baybay St. Iloilo City, Philippines', 
            info: '',
          ),
          InfoSection( 
            icon: Icons.favorite,
            label: 'Hobbies',
            data: "Basketball, Photography, Traveling",
            info: '',
          ),
          InfoSection(
            icon: Icons.bookmark,
            label: 'Course',
            data: "BS Information Technology",
            info: '',
          ),
          InfoSection(
            icon: Icons.school,
            label: 'Education',
            data: 'West Visayas State University', 
            info:'',
          ),
         Divider( color: Colors.black,),
          SizedBox(height: 16), 
          Container(
            color: Colors.black,
             margin: EdgeInsets.symmetric(horizontal: 16.0),
            padding: EdgeInsets.all(16.0), alignment: Alignment.center,
            child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "My Biography",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center, 
                ),
                SizedBox(height: 40),
                Text(
                  """
                   My name is Job Russel Destor. I am currently a third year BSIT  student majoring in Network and Information Security in West Visayas State University.
                   I enjoy traveling with a love for capturing the beauty of landscapes through my photography.  My curiosity allows me to find new adventures and uncharted territories to explore. """,
                textAlign: TextAlign.center,
                style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white, fontSize: 15),
              
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoSection extends StatelessWidget {
  final IconData icon;
  final String label;
  final String data;
  final String info;
  

  InfoSection({required this.icon, required this.label, required this.data, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0),
     
      child: Row(
         crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.black,),
          SizedBox(width: 15),
          Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ), 
              ),
              Text(
                data,
                style: TextStyle(fontSize: 14,fontStyle:  FontStyle.italic),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
