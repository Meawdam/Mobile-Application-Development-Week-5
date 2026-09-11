import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('My Profile', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://icons.iconarchive.com/icons/elegantthemes/beautiful-flat/96/Profile-icon.png',
                ),
                radius: 60,
              ),
            ),
            Divider(color: Colors.grey, height: 60,),
            Text('Name', style: TextStyle(color: Colors.grey)),
            Text('John Doe', style: TextStyle(color: Colors.amber, fontSize: 24)),
            SizedBox(height: 16,),
            Text('Age', style: TextStyle(color: Colors.grey)),
            Text('22', style: TextStyle(color: Colors.amber, fontSize: 24)),
            SizedBox(height: 16,),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey),
                SizedBox(width: 8,),
                Text('johndoe@mymail.com', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
