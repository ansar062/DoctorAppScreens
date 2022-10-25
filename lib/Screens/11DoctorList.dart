import 'package:doctorapp/Screens/9Home.dart';
import 'package:doctorapp/Widget/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class DoctorList11 extends StatefulWidget {
  const DoctorList11({super.key});

  @override
  State<DoctorList11> createState() => _DoctorList11State();
}

class _DoctorList11State extends State<DoctorList11> {
  List<String> speciality = ['Cardiology', 'Heart Sergon', 'Therapist'];
  List<String> hospital = ['All', 'DMC', 'KMC', 'AMC'];
  String? selectedHospital;
  String? selectedValue;
  bool isOn = false;
  List<String> doctorName = [
    'Dr. Mahmud Nik Hassan',
    'Dr. Winston McCaffrey',
    'Dr. Brycen Bradford',
    'Dr. Tierra Riley',
    'Dr. Ashley Wentworth'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(16),
              decoration:
                  BoxDecoration(color: Color.fromRGBO(246, 246, 246, 100)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height * 0.015,
                    ),
                    Center(
                      child: CustomText(
                        text: 'Select Doctor',
                        fsize: 20,
                        fw: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    searchBar(context),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomText(
                          text: 'Specility',
                          color: Color.fromARGB(255, 69, 120, 190),
                          fsize: 18,
                        ),
                        CustomText(
                          text: 'Hospital',
                          color: Color.fromARGB(255, 69, 120, 190),
                          fsize: 18,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: selectedValue,
                            hint: CustomText(
                              text: 'Select Speciality',
                              color: Color.fromARGB(255, 69, 120, 190),
                              fsize: 20,
                              fw: FontWeight.w700,
                            ),
                            icon: Icon(
                              Icons.keyboard_arrow_down_sharp,
                            ),
                            items: speciality
                                .map((e) => DropdownMenuItem<String>(
                                    value: e,
                                    child: CustomText(
                                      text: e,
                                      color: Color.fromARGB(255, 69, 120, 190),
                                      fsize: 20,
                                      fw: FontWeight.w700,
                                    )))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value as String;
                              });
                            },
                          ),
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: selectedHospital,
                            hint: CustomText(
                              text: 'Select Hospital',
                              color: Color.fromARGB(255, 69, 120, 190),
                              fsize: 20,
                              fw: FontWeight.w700,
                            ),
                            icon: Icon(
                              Icons.keyboard_arrow_down_sharp,
                            ),
                            items: hospital
                                .map((e) => DropdownMenuItem<String>(
                                    value: e,
                                    child: CustomText(
                                      text: e.trimLeft(),
                                      color: Color.fromARGB(255, 69, 120, 190),
                                      fsize: 20,
                                      fw: FontWeight.w700,
                                    )))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedHospital = value as String;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomText(text: 'Show nearby'),
                        SizedBox(
                          width: Get.width * 0.01,
                        ),
                        FlutterSwitch(
                          width: 70.0,
                          activeText: '',
                          inactiveText: '',
                          height: 35.0,
                          valueFontSize: 18.0,
                          toggleSize: 30.0,
                          value: isOn,
                          borderRadius: 30.0,
                          activeColor: Color.fromARGB(255, 69, 120, 190),
                          padding: 8.0,
                          showOnOff: true,
                          onToggle: (val) {
                            setState(() {
                              isOn = val;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    SizedBox(
                      width: Get.width,
                      height: Get.height * 0.6,
                      child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              padding: EdgeInsets.only(bottom: 10),
                              child:
                                  searchDoctorList(context, doctorName[index]),
                            );
                          }),
                    ),
                  ]))),
    );
  }
}

Widget searchDoctorList(BuildContext context, String name) {
  return Container(
    padding: EdgeInsets.all(8),
    margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.02,
        right: MediaQuery.of(context).size.width * 0.02),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.14,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    child: Row(
      children: [
        SizedBox(
          width: 5,
        ),
        // Container(
        //   height: Get.height * 0.12,
        //   width: Get.width * 0.27,
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: AssetImage('assets/profile.png'), fit: BoxFit.cover),
        //     borderRadius: BorderRadius.circular(20),
        //     color: Color.fromRGBO(246, 246, 246, 100),
        //   ),
        // ),
        SizedBox(
          height: Get.height * 0.12,
          width: Get.width * 0.27,
          child: Stack(
            children: [
              Positioned(
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        height: Get.height * 0.14,
                        width: Get.width * 0.3,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/profile.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(246, 246, 246, 100),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -2,
                right: -2,
                child: ClipOval(
                  child: Container(
                    padding: EdgeInsets.all(3),
                    color: Colors.white,
                    child: ClipOval(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        color: Color.fromARGB(255, 69, 120, 190),
                        
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: Get.height * 0.04,
              width: Get.width * 0.5,
              child: Container(
                child: CustomText(
                  text: name,
                  fsize: 18,
                  fw: FontWeight.bold,
                  color: Color.fromARGB(255, 69, 120, 190),
                ),
              ),
            ),
            SizedBox(
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 14,
                  ),
                  CustomText(
                    text: '4.9 (25 Reviews)',
                    fsize: 14,
                  )
                ],
              ),
            ),
            SizedBox(
                width: Get.width * 0.5,
                height: Get.height * 0.05,
                child: Container(
                    child: Text.rich(TextSpan(
                        text: 'Cardiologist',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(119, 122, 149, 100)),
                        children: [
                      TextSpan(
                          text: ' Akij Medical Hospital, Dhaka',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(160, 162, 179, 1),
                          ))
                    ])))),
          ],
        ),
      ],
    ),
  );
}
