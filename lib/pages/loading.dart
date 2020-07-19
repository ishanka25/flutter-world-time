import 'package:flutter/material.dart';
import 'package:project_worldtime/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = "Loading";

  void setupWorldTime() async {
    WorldTime worldTime =
        new WorldTime(location: 'Sri Lanka', flag: '', url: 'Asia/Colombo');
    await worldTime.getTime();
    // pushReplacementNamed will replace the loading screen
    // to pass the data to another route use - arguments
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': worldTime.location,
      'flag': worldTime.flag,
      'time': worldTime.time
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Text('Loading...'),
      ),
    );
  }
}
