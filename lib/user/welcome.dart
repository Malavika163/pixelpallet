import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _PhotographyAppScreenState();
}

class _PhotographyAppScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.blueAccent,
        title: Text("Welcome, User",style:TextStyle(color: Colors.white) ,),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'), // Change to network if needed
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(categories[index]['image']!),
                ),
                SizedBox(height: 8.0),
                Text(
                  categories[index]['title']!,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

List<Map<String, String>> categories = [
  {'title': 'Pet', 'image': 'assets/1.jpg'},
  {'title': 'Wild Animals', 'image': 'assets/2.jpg'},
  {'title': 'People', 'image': 'assets/3.jpg'},
  {'title': 'Nature', 'image': 'assets/4.jpg'},
  {'title': 'Birds', 'image': 'assets/5.jpg'},
  {'title': 'Vehicles', 'image': 'assets/6.jpg'},
];
