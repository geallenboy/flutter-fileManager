import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/pages/home_page.dart';

class LogInButton extends StatelessWidget {
  LogInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 16, left: 16,top: 60),
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: splashLinearGradient,
        ),
        child: Center(
          child: Text(
            "Кириш",
            style: TextStyle(color:white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
