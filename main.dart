import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var age = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Pransu ID'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            age += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('Images/Pransu4.png'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.grey,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Pransu Karki',
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Age',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              '$age',
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Faculty',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'BBA',
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'pransu.karki@gmail.com',
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
