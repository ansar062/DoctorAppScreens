import 'package:doctorapp/Screens/08setupprofile.dart';
import 'package:doctorapp/Screens/10Specialty.dart';
import 'package:doctorapp/Screens/11DoctorList.dart';
import 'package:doctorapp/Screens/17_ApointmentDetail.dart';
import 'package:doctorapp/Screens/18Payment.dart';
import 'package:doctorapp/Screens/23WriteReview.dart';
import 'package:doctorapp/Screens/28onlineAppointment.dart';
import 'package:doctorapp/Screens/39SettingEditingProfile.dart';
import 'package:doctorapp/Screens/9Home.dart';
import 'package:doctorapp/Screens/appointmentscreen.dart';
import 'package:doctorapp/Screens/patientdetails1.dart';
import 'package:doctorapp/Screens/patientdetails2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  OnlineAppointment28(),
    );
  }
}

