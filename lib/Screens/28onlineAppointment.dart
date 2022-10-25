import 'package:doctorapp/Widget/CustomButton.dart';
import 'package:doctorapp/Widget/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnlineAppointment28 extends StatefulWidget {
  const OnlineAppointment28({super.key});

  @override
  State<OnlineAppointment28> createState() => _OnlineAppointment28State();
}

class _OnlineAppointment28State extends State<OnlineAppointment28> {
  function(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Payment",
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
        body: SingleChildScrollView(
            child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(246, 246, 246, 100)),
                //padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      profile(context),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      SizedBox(
                        height: Get.height * 0.75,
                        width: Get.width,
                        child: Stack(
                          children: [
                            Positioned(
                                child: Container(
                              height: Get.height * 0.2,
                              width: Get.width,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 69, 120, 190),
                                borderRadius: BorderRadius.circular(38),
                              ),
                            )),
                            Positioned(
                              top: Get.height * 0.026,
                              left: Get.width * 0.09,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: Get.height * 0.08,
                                    width: Get.width * 0.18,
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(88, 133, 197, 100),
                                    ),
                                    child: Icon(
                                      Icons.call_outlined,
                                      size: 40,
                                      color: Color.fromRGBO(121, 157, 209, 100),
                                    ),
                                  ),
                                  SizedBox(
                                    width: Get.width * 0.04,
                                  ),
                                  Container(
                                    height: Get.height * 0.08,
                                    width: Get.width * 0.18,
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(88, 133, 197, 100),
                                    ),
                                    child: Icon(
                                      Icons.message_outlined,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: Get.width * 0.04,
                                  ),
                                  Container(
                                    height: Get.height * 0.08,
                                    width: Get.width * 0.18,
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(88, 133, 197, 100),
                                    ),
                                    child: Icon(
                                      Icons.videocam,
                                      size: 40,
                                      color: Color.fromRGBO(121, 157, 209, 100),
                                    ),
                                  ),
                                  SizedBox(
                                    width: Get.width * 0.04,
                                  ),
                                  Container(
                                    height: Get.height * 0.08,
                                    width: Get.width * 0.18,
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(13, 138, 113, 100),
                                    ),
                                    child: Icon(
                                      Icons.alarm,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                                top: Get.height * 0.12,
                                child: Container(
                                  height: Get.height * 0.7,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(38),
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: Get.height * 0.03,
                                        ),
                                        lines(
                                            context,
                                            'Visit Time',
                                            Icon(
                                              Icons.watch_later_outlined,
                                              color: Color.fromRGBO(
                                                  160, 162, 179, 100),
                                            )),
                                            SizedBox(
                                              height: Get.height*0.02,
                                            ),
                                        Container(
                                            padding: EdgeInsets.only(
                                                left: Get.width * 0.1,
                                                bottom: 10),
                                            child: CustomText(
                                              text: 'Morning',
                                              fsize: 20,
                                              color: Color.fromARGB(
                                                  255, 69, 120, 190),
                                            )),
                                        Container(
                                            padding: EdgeInsets.only(
                                                left: Get.width * 0.1,
                                                bottom: 10),
                                            child: CustomText(
                                                text: 'Today - 10June, 2020',
                                                fsize: 20,
                                                color: Color.fromARGB(
                                                    255, 69, 120, 190))),
                                        Container(
                                            padding: EdgeInsets.only(
                                                left: Get.width * 0.1,
                                                bottom: 10),
                                            child: CustomText(
                                                text: '10:00AM - 11:00 AM',
                                                fsize: 20,
                                                color: Color.fromARGB(
                                                    255, 69, 120, 190))),
                                                    SizedBox(
                                              height: Get.height*0.02,
                                            ),
                                        lines(
                                            context,
                                            'Patient Information',
                                            Icon(
                                              Icons.person_outline_rounded,
                                              color: Color.fromRGBO(
                                                  160, 162, 179, 100),
                                            )),
                                            SizedBox(
                                              height: Get.height*0.02,
                                            ),
                                        Row(
                                          children: [
                                            Container(
                                                padding: EdgeInsets.only(
                                                    left: Get.width * 0.1,
                                                    bottom: 10),
                                                child: CustomText(
                                                  text: 'Name',
                                                )),
                                            Container(
                                                padding: EdgeInsets.only(
                                                    left: Get.width * 0.1,
                                                    bottom: 10),
                                                child: CustomText(text: ':')),
                                            Container(
                                                padding: EdgeInsets.only(
                                                    left: Get.width * 0.1,
                                                    bottom: 10),
                                                child: CustomText(
                                                  text: 'Mahmudul Hasan Manik',
                                                  color: Color.fromRGBO(
                                                      119, 122, 149, 100),
                                                  fsize: 20,
                                                  fw: FontWeight.bold,
                                                ))
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                                padding: EdgeInsets.only(
                                                    left: Get.width * 0.1,
                                                    bottom: 10),
                                                child: CustomText(text: 'Age')),
                                            Container(
                                                padding: EdgeInsets.only(
                                                    left: Get.width * 0.12,
                                                    bottom: 10),
                                                child: CustomText(text: ':')),
                                            Container(
                                                padding: EdgeInsets.only(
                                                    left: Get.width * 0.12,
                                                    bottom: 10),
                                                child: CustomText(
                                                  text: '20',
                                                  color: Color.fromRGBO(
                                                      119, 122, 149, 100),
                                                  fsize: 20,
                                                  fw: FontWeight.bold,
                                                ))
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                                padding: EdgeInsets.only(
                                                    left: Get.width * 0.1,
                                                    bottom: 10),
                                                child:
                                                    CustomText(text: 'Phone')),
                                            Container(
                                                padding: EdgeInsets.only(
                                                    left: Get.width * 0.1,
                                                    bottom: 10),
                                                child: CustomText(text: ':')),
                                            Container(
                                                padding: EdgeInsets.only(
                                                    left: Get.width * 0.1,
                                                    bottom: 10),
                                                child: CustomText(
                                                  text: '+997239719371',
                                                  color: Color.fromRGBO(
                                                      119, 122, 149, 100),
                                                  fsize: 20,
                                                  fw: FontWeight.bold,
                                                ))
                                          ],
                                        ),
                                        lines(
                                            context,
                                            'Fees information',
                                            Icon(
                                              Icons.currency_rupee_rounded,
                                              color: Color.fromRGBO(
                                                  160, 162, 179, 100),
                                            )),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                            padding: EdgeInsets.only(
                                                left: Get.width * 0.1,
                                                bottom: 10),
                                            child: CustomText(text: 'Paid', color: Color.fromARGB(255, 69, 120, 190), fsize: 18,)),
                                        Container(
                                            padding: EdgeInsets.only(
                                                left: Get.width * 0.1,
                                                bottom: 10),
                                            child: CustomText(text: '5 OMR', color: Color.fromARGB(255, 69, 120, 190), fsize: 18,)),

                                          Center(child: CustomButton(func: function, text: 'Back'))
                                      ],
                                    ),
                                  ),
                                )),
                                
                          ],
                        ),
                      ),
                    ]))));
  }
}

Widget lines(BuildContext context, String text, Icon icon) {
  return Row(
    children: [
      icon,
      SizedBox(
        width: 10,
      ),
      CustomText(
        text: text,
        fsize: 20,
        fw: FontWeight.bold,
      )
    ],
  );
}

Widget profile(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(8),
    margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.02,
        right: MediaQuery.of(context).size.width * 0.02),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.14,
    decoration: BoxDecoration(
        color: Color.fromRGBO(246, 246, 246, 100),
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      children: [
        SizedBox(
          width: 5,
        ),
        Container(
          height: Get.height * 0.14,
          width: Get.width * 0.3,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/profile.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(246, 246, 246, 100),
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
            CustomText(
              text: 'Dr. Tierra Riley',
              fsize: 28,
              fw: FontWeight.bold,
              color: Color.fromRGBO(119, 122, 149, 100),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            CustomText(
              text: 'Cardiologist - Acrra Medical',
              fsize: 18,
              color: Color.fromRGBO(160, 162, 179, 100),
            ),
            SizedBox(
              height: 5,
            ),
            CustomText(
              text: 'College Hospital',
              fsize: 18,
              color: Color.fromRGBO(160, 162, 179, 100),
            ),
          ],
        ),
      ],
    ),
  );
}
