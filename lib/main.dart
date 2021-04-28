import 'package:flutter/material.dart';
import 'package:video_call_ui/screens/audio_call/audio_call.dart';
import 'package:video_call_ui/screens/dial_screen/dial_screen.dart';
import 'package:video_call_ui/screens/group_call/group_call.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GroupCall(),
    );
  }
}

