import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petapp/Views/onboarding_screen.dart';
import 'package:get/get.dart'; // Import the GetX package
void main() async{
  WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
      options: FirebaseOptions(apiKey: "AIzaSyBQAORoKqI_XpSJc4FOFl6TU7bL3fHoBrg" , appId: "1:619403303511:android:398dd568db5dd1214fa112", messagingSenderId: "619403303511", projectId: "flutterdev-69f9a" ,  storageBucket: "gs://flutterdev-69f9a.appspot.com")
    );

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        ),

      title: 'Flutter Demo',
      home:OnBoardingScreen(),


    );
  }
}

