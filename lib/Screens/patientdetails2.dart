import 'package:auto_size_text/auto_size_text.dart';
import 'package:doctorapp/Screens/appointmentscreen.dart';
import 'package:doctorapp/Widget/CustomButton.dart';
import 'package:doctorapp/Widget/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PatientDetailTwo extends StatefulWidget {
  const PatientDetailTwo({super.key});

  @override
  State<PatientDetailTwo> createState() => _PatientDetailTwoState();
}

class _PatientDetailTwoState extends State<PatientDetailTwo> {
  List<bool> selectings = [false, false, false, false, false, false];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  slect(int index) {
    if (selectings[index] == false) {
      setState(() {
        selectings[index] = true;
      });
    } else {
      setState(() {
        selectings[index] = false;
      });
    }
  }

  pushnext() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Appointment()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Patient's details",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
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
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(color: Color.fromRGBO(246, 246, 246, 100)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8,
            ),
            CustomText(
              text: 'Do you have any know drug allergies?',
              fw: FontWeight.w700,
              fsize: 18,
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              child: Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromRGBO(212, 212, 219, 100)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            GridView.count(
                              primary: false,
                              padding: const EdgeInsets.all(8),
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              //crossAxisSpacing: 20,
                              //mainAxisSpacing: 20,
                              crossAxisCount: 3,
                              children: <Widget>[
                                InkWell(
                                    onTap: () {
                                      slect(0);
                                    },
                                    child: allergies(
                                        context, 'Pencillin', selectings[0])),
                                InkWell(
                                    onTap: () {
                                      slect(1);
                                    },
                                    child: allergies(
                                        context, 'Aspirin', selectings[1])),
                                InkWell(
                                    onTap: () {
                                      slect(2);
                                    },
                                    child: allergies(
                                        context, 'Insulin', selectings[2])),
                                InkWell(
                                    onTap: () {
                                      slect(3);
                                    },
                                    child: allergies(
                                        context, 'Ibuprofen', selectings[3])),
                                InkWell(
                                    onTap: () {
                                      slect(4);
                                    },
                                    child: allergies(
                                        context, 'Cetuximab', selectings[4])),
                                InkWell(
                                    onTap: () {
                                      slect(5);
                                    },
                                    child: allergies(
                                        context, 'Amoxicillin', selectings[5])),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 32,
            ),
            
            CustomText(text: 'Current Location', fsize: 18, fw: FontWeight.w700, color: Color.fromARGB(255, 69, 120, 190),),
            SizedBox(
              height: 20,
            ),
            Container(
              //padding: EdgeInsets.all(8),
              height: MediaQuery.of(context).size.height * 0.19,
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(212, 212, 219, 100)),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(

                        'https://media.wired.com/photos/59269cd37034dc5f91bec0f1/191:100/w_1280,c_limit/GoogleMapTA.jpg'),
                  )),
            ),
            SizedBox(
              height: 32,
            ),
            Center(
              child: CustomButton(
                func: pushnext,
                text: 'Request',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget allergies(BuildContext context, String name, bool isSelect) {
  return SizedBox(
    child: Stack(
      children: [
        Positioned(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.09,
                width: Get.width * 0.2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(222, 222, 226, 100),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: CustomText(
                    text: name,
                    fw: FontWeight.bold,
                    color: Color.fromRGBO(74, 74, 74, 100),
                  )),
                ),
              ),
            ],
          ),
        ),
        Positioned(
            top: -2,
            right: 22,
            child: isSelect
                ? Icon(
                    Icons.check_circle,
                    color: Color.fromARGB(255, 69, 120, 190),
                  )
                : Container()),
      ],
    ),
  );
}
