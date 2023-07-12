import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mood_tracker/home.dart';

void main() async {
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBlH3_crlWOEfgoDIKIgfa1o9ztZUKWFHU",
          appId: "1:136805665111:web:ee25e18fd0abc645145612",
          messagingSenderId: "136805665111",
          projectId: "mood-tracker-5663d"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mood Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homeScreen(),
    );
  }
}
