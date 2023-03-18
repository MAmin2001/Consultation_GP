import 'package:flutter/material.dart';

class MenteeProfile extends StatelessWidget {
  const MenteeProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Mentee Profile',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40.0)
        ),
      ),
    );
  }
}
