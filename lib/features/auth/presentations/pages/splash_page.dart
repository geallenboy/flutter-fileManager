import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/images.dart';
import 'package:shirin_meva_demo_ui/features/auth/presentations/pages/auth_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 1);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => AuthPage()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: green1,
              gradient: splashLinearGradient,
            ),
          ),
          Positioned(
            child: Center(
              child: Image.asset(AppImage.company_logo1),
            ),
          ),
          Positioned(
            child: Center(
              child: Image.asset(
                AppImage.company_logo2,
                height: 900,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            child: Container(
              margin: EdgeInsets.only(bottom: 60),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CircularProgressIndicator.adaptive(
                  backgroundColor: white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
