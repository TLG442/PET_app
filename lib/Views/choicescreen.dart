import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petapp/Views/auth/login_signup.dart';

import 'auth/Login_signup_trainer.dart';
import 'create_acc_choice_screen.dart';

class ChoiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF818AF9),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Bringing pet care to your fingertips",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Spacer(), // Use Spacer to fill available space
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: MaterialButton(
                height: 40,
                minWidth: 150,
                color: Colors.orange,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                  Get.to(() => LoginView());
                },
                child: Text(
                  "As a pet owner",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: MaterialButton(
                height: 40,
                minWidth: 150,
                color: Colors.orange,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                  Get.to(() => LoginViewTrainer());
                },
                child: Text(
                  "As a Trainer",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Image.asset('assets/Picture1.png'),
            ),
            SizedBox(
              height: 50,
            ),
            Spacer(), // Use Spacer to fill available space
          ],
        ),
      ),
    );
  }
}
