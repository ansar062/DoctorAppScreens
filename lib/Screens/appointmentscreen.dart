import 'package:doctorapp/Screens/patientdetails1.dart';
import 'package:doctorapp/Widget/CustomButton.dart';
import 'package:doctorapp/Widget/CustomText.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  List<bool> isSelected = [false, false, false, false];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    pusher() {
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PatientDetailOne()));
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Appointment',
          fw: FontWeight.bold,
          fsize: 24,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromRGBO(246, 246, 246, 100),
        leading: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              )),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.grey),
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 30,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(246, 246, 246, 100)),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(60),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/calender.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CustomText(
              text: 'Appointment Type',
              fsize: 18,
              fw: FontWeight.w700,
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                if (isSelected[0] == true) {
                  setState(() {
                    isSelected[0] = false;
                  });
                } else {
                  setState(() {
                    isSelected[0] = true;
                  isSelected[1] = false;
                  isSelected[2] = false;
                  isSelected[3] = false;
                  });
                }
              },
              child: appointmentype(
                  context,
                  'Visit Clinic',
                  'Visit the doctor at the clinic',
                  Icon(
                    Icons.local_hospital_outlined,
                    size: 30,
                    color: Color.fromRGBO(105, 165, 222, 100),
                  ),
                  'Pay at Clinic',
                  isSelected[0]),
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                if (isSelected[1] == true) {
                  setState(() {
                    isSelected[1] = false;
                  });
                } else {
                  setState(() {
                    isSelected[1] = true;
                  isSelected[0] = false;
                  isSelected[2] = false;
                  isSelected[3] = false;
                  });
                }
              },
              child: appointmentype(
                  context,
                  'Voice Call',
                  '3 minute voice call with doctor',
                  Icon(
                    Icons.call,
                    size: 30,
                    color: Color.fromRGBO(85, 84, 219, 100),
                  ),
                  '2 OMR',
                  isSelected[1]),
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                if (isSelected[2] == true) {
                  setState(() {
                    isSelected[2] = false;
                  });
                } else {
                  setState(() {
                    isSelected[0] = false;
                  isSelected[1] = false;
                  isSelected[2] = true;
                  isSelected[3] = false;
                  });
                }
              },
              child: appointmentype(
                  context,
                  'Video Call',
                  '3 minute video call with doctor',
                  Icon(
                    Icons.video_call_rounded,
                    size: 30,
                    color: Color.fromRGBO(160, 121, 236, 100),
                  ),
                  '3 OMR',
                  isSelected[2]),
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                if (isSelected[3] == true) {
                  setState(() {
                    isSelected[3] = false;
                  });
                } else {
                  setState(() {
                    isSelected[0] = false;
                  isSelected[1] = false;
                  isSelected[2] = false;
                  isSelected[3] = true;
                  });
                }
              },
              child: appointmentype(
                  context,
                  'Home Visit',
                  'Doctor comes to your location',
                  Icon(
                    Icons.home,
                    size: 30,
                    color: Color.fromRGBO(69, 120, 190, 100),
                  ),
                  '50 OMR',
                  isSelected[3]),
            ),
            SizedBox(
              height: 50,
            ),
            Center(child: CustomButton(func: pusher, text: 'Continue')),
          ],
        ),
      ),
    );
  }
}

Widget appointmentype(BuildContext context, String type, String detail,
    Icon iconn, String omr, bool isSelected) {
  return Container(
    margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.02,
        right: MediaQuery.of(context).size.width * 0.02),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.07,
    decoration: BoxDecoration(
        color: isSelected ? Color.fromARGB(255, 69, 120, 190) : Colors.white,
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      children: [
        SizedBox(
          width: 5,
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(246, 246, 246, 100),
          ),
          child: iconn,
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: type,
              fsize: 20,
              fw: FontWeight.bold,
              color:
                  isSelected ? Colors.white : Color.fromRGBO(160, 162, 179, 1),
            ),
            SizedBox(
              height: 1,
            ),
            CustomText(
              text: detail,
              fsize: 14,
              color:
                  isSelected ? Colors.white : Color.fromRGBO(160, 162, 179, 1),
            ),
          ],
        ),
        Flexible(child: Container(),
        flex: 2,
        ),
        CustomText(
            text: omr,
            fsize: 20,
            fw: FontWeight.w700,
            color:
                isSelected ? Colors.white : Color.fromARGB(255, 69, 120, 190)),
                SizedBox(
          width: Get.width * 0.01,
        ),
      ],
    ),
  );
}
