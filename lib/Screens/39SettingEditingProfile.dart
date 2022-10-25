import 'package:doctorapp/Screens/08setupprofile.dart';
import 'package:doctorapp/Screens/appointmentscreen.dart';
import 'package:doctorapp/Widget/CustomButton.dart';
import 'package:doctorapp/Widget/CustomText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class SettingEditProfile39 extends StatefulWidget {
  const SettingEditProfile39({super.key});

  @override
  State<SettingEditProfile39> createState() => _SettingEditProfile39State();
}

class _SettingEditProfile39State extends State<SettingEditProfile39> {
  bool isOn = false;
  final languages = [
    'English (United States)',
    'Francais (Franch)',
    'Netherlands (Nederland)',
    'Arabic (Oman)',
    'Urdu (Pakistan)',
    'Bangla (Bangladesh)',
    'Hindi (India)',
  ];
  String language = 'English';
  int index = 0;
  showAlertDialog() {
    // We will place our dialog here
    showDialog(
      context: context,
      builder: (BuildContext context) {
        pop() {
          setState(() {
            Navigator.pop(context);
          });
        }

        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Dialog(
              child: Container(
            padding: EdgeInsets.all(20),
            height: Get.height * 0.5,
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: 'Select language',
                  fsize: 24,
                  fw: FontWeight.bold,
                ),
                SizedBox(
                  height: Get.height * 0.4,
                  width: Get.width,
                  child: CupertinoPicker(
                    itemExtent: 64,
                    children: languages
                        .map((item) => Center(
                              child: Text(item),
                            ))
                        .toList(),
                    onSelectedItemChanged: (inde) {
                      setState(() {
                        index = inde;
                        final item = languages[index];
                        print(item);
                        language = item;
                      });
                    },
                  ),
                ),
              ],
            ),
          )),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(color: Color.fromRGBO(246, 246, 246, 100)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height * 0.02,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: Get.width * 0.37),
                        child: CustomText(
                          text: 'Settings',
                          fsize: 24,
                          fw: FontWeight.bold,
                        )),
                    Container(
                      padding: EdgeInsets.only(left: Get.width * 0.1),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shadowColor:
                                  MaterialStateProperty.all(Colors.grey),
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.all(10)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SetUpProfile()));
                            },
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  color: Color.fromRGBO(160, 162, 179, 1)),
                            )),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Stack(
                children: [
                  Positioned(
                      child: Container(
                    height: Get.height * 0.18,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 69, 120, 190)),
                  )),
                  Positioned(
                    top: Get.height * 0.025,
                    left: Get.width * 0.028,
                    child: Container(
                      height: Get.height * 0.13,
                      width: Get.width * 0.28,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/profile.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(246, 246, 246, 100),
                      ),
                    ),
                  ),
                  Positioned(
                      top: Get.height * 0.025,
                      left: Get.width * 0.35,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Hello!',
                              fsize: 20,
                            ),
                            SizedBox(
                              height: Get.height * 0.03,
                            ),
                            SizedBox(
                              height: Get.height * 0.2,
                              width: Get.width * 0.4,
                              child: Container(
                                child: CustomText(
                                  text: 'Mahmudul Hasan Manik',
                                  fsize: 24,
                                  fw: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                  Positioned(
                      top: Get.height * 0.025,
                      right: Get.width * 0.02,
                      child: Icon(
                        Icons.more_vert_outlined,
                        color: Color.fromRGBO(160, 162, 179, 1),
                      ))
                ],
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.07,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(238, 234, 246, 100),
                      ),
                      child: ImageIcon(
                        size: 50,
                        color: Color.fromRGBO(160, 121, 236, 100),
                        AssetImage('assets/notify.png'),
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.05,
                    ),
                    CustomText(text: 'Notification', fsize: 20),
                    SizedBox(
                      width: Get.width * 0.3,
                    ),
                    FlutterSwitch(
                      width: 70.0,
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
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.07,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(248, 239, 234, 100),
                      ),
                      child: ImageIcon(
                        size: 50,
                        color: Color.fromRGBO(255, 168, 115, 100),
                        AssetImage('assets/lang.png'),
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.05,
                    ),
                    CustomText(text: 'Language', fsize: 20),
                    Container(
                      child: Flexible(
                        flex: 2,
                        child: Container(),
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          showAlertDialog();
                        },
                        child: CustomText(text: language)),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                      color: Color.fromRGBO(160, 162, 179, 1),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              settingtile(
                context,
                'Allergies',
                'assets/syringe.png',
                Color.fromRGBO(238, 234, 246, 100),
                Color.fromRGBO(45, 164, 142, 100),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              settingtile(
                context,
                'Medical Details',
                'assets/beat.png',
                Color.fromRGBO(238, 234, 246, 100),
                Color.fromRGBO(170, 0, 62, 100),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              settingtile(
                context,
                'Favourite Doctor',
                'assets/heart.png',
                Color.fromRGBO(231, 231, 244, 100),
                Color.fromRGBO(158, 54, 107, 100),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              settingtile(
                context,
                'FAQs',
                'assets/faq.png',
                Color.fromRGBO(231, 231, 244, 100),
                Color.fromRGBO(85, 84, 219, 100),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              settingtile(
                context,
                'Help',
                'assets/help.png',
                Color.fromRGBO(238, 234, 246, 100),
                Color.fromRGBO(160, 121, 236, 100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget settingtile(
    BuildContext context, String type, String path, Color color, Color color2) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.07,
    child: Row(
      children: [
        SizedBox(
          width: 5,
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
          child: ImageIcon(
            size: 50,
            color: color2,
            AssetImage(path),
          ),
        ),
        SizedBox(
          width: Get.width * 0.05,
        ),
        CustomText(text: type, fsize: 20),
        Container(
          child: Flexible(
            flex: 2,
            child: Container(),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_outlined,
          size: 20,
          color: Color.fromRGBO(160, 162, 179, 1),
        )
      ],
    ),
  );
}
