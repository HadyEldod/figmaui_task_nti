import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Create a Post',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
          actions: [
            TextButton(
              onPressed: () {
                print('Post button pressed');
              },
              child: Text(
                'Post',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage('https://fastly.picsum.photos/id/217/200/300.jpg?hmac=3GPQ-pPnL4D8miCKA0qNqIg4zr5Ponvl9OVH83CeGuc'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'John Doe', // Replace with the user's name
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Write something to share with community?',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Write your post...',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey[900],
                ),
                style: TextStyle(color: Colors.white),
                maxLines: 3,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: '#AddTag...',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey[900],
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
            
            ],
          ),
        ),
      ),
    );
  }
}