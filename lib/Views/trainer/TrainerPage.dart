import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


import 'package:firebase_auth/firebase_auth.dart';

import 'package:get/get.dart';

import '../../controller/data_controller.dart';
import '../../utils/app_color.dart';

import '../invite_guest/invite_guest_screen.dart';

class TrainerPage extends StatelessWidget {

  final String name;
  final String image;
  final String experience;
  final String cost;
  final String desc;
  final String certificate;

  final String uid;

  TrainerPage({

    required this.name,
    required this.image,
    required this.experience,
    required this.cost,
    required this.desc,
    required this.certificate,


    required this.uid,
  });

  @override
  Widget build(BuildContext context) {
    // Implement your TrainerPage UI using the provided parameters
    // For example:
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  margin: EdgeInsets.only(top: 50, bottom: 20),
                  width: 30,
                  height: 30,
                  child: Image.asset(
                    'assets/Header.png',
                  ),
                ),
              ),

              Row(
                children: [
                  Container(

                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),

                  ),

                  Text(
                    "${name}",
                    style: TextStyle(
                        fontSize: 18,
                        color: AppColors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 10,
                  ),

                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/location.png',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'pannipitiya',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 190,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 10,
              ),
              Text(
                cost,
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                experience,
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                certificate,
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(children: [

                    TextSpan(
                      text: desc,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                  ])),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.to(() => Inviteguest());
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.blue.withOpacity(0.9)),
                        child: Center(
                          child: Text(
                            "Request to hire",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),

                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [

                ],
              ),
              SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 25,
              ),

            ],
          ),
        ),
      ),
    );
  }
}






