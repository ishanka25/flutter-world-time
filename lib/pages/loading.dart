import 'package:flutter/material.dart';
import 'package:project_worldtime/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime worldTime =
        new WorldTime(location: 'Sri Lanka', flag: '', url: 'Asia/Colombo');
    await worldTime.getTime();
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading...'),
    );
  }
}
