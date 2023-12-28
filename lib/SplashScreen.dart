import 'dart:async';
import 'dart:io';


import 'package:flutter/material.dart';
import 'package:resume_application/create_resume.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SplashScreen> {
  @override
  void initState() 
  {
   
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, homePageRoute);
  }

  homePageRoute() async 
  {
   Navigator.of(context).push(MaterialPageRoute(builder:
    (context) => AddStudentInformation()));

   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: SafeArea(

        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: 400,
              width: 400,
              child: Image.asset(
                "assets/images/team.png",
                fit: BoxFit.cover,
              ),
            ),
            
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Center(
                  child: CircularProgressIndicator(),
                ),
                SizedBox(
                  height: 5,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
