import 'package:doctorapp/Screens/10Specialty.dart';
import 'package:doctorapp/Screens/11DoctorList.dart';
import 'package:doctorapp/Widget/CustomButton.dart';
import 'package:doctorapp/Widget/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home09 extends StatefulWidget {
  const Home09({super.key});

  @override
  State<Home09> createState() => _Home09State();
}

class _Home09State extends State<Home09> {
  func() {}
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(color: Color.fromRGBO(246, 246, 246, 100)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: Get.height * 0.06,
                    width: Get.width * 0.12,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(246, 246, 246, 100),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/profile.png'))),
                    //child: iconn,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Mahmudul',
                        fsize: 20,
                        fw: FontWeight.bold,
                        color: Color.fromRGBO(160, 162, 179, 1),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      CustomText(
                        text: 'Find your suitable doctor here',
                        fsize: 14,
                        color: Color.fromRGBO(160, 162, 179, 1),
                      ),
                    ],
                  ),
                  Flexible(flex: 2, child: Container()),
                  Container(
                    height: Get.height * 0.1,
                    width: Get.width * 0.1,
                    child: ImageIcon(
                      size: 50,
                      color: Color.fromRGBO(160, 162, 179, 1),
                      AssetImage('assets/notify.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              searchBar(context),
              SizedBox(
                height: Get.height * 0.01,
              ),
              CustomText(
                text: 'Get Care',
                fsize: 20,
                fw: FontWeight.bold,
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Center(
                  child: CustomButton(
                      func: func, text: 'Request a Doctors Appointment')),
              SizedBox(
                height: Get.height * 0.01,
              ),
              CustomText(
                text: 'Specialist',
                fsize: 20,
                fw: FontWeight.bold,
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              SizedBox(
                width: Get.width,
                height: Get.height * 0.16,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    speciality(
                        context,
                        'assets/special1.png',
                        Color.fromRGBO(69, 120, 190, 100),
                        'Cardio',
                        'Specialist',
                        27),
                    SizedBox(
                      width: Get.width * 0.03,
                    ),
                    speciality(
                        context,
                        'assets/special4.png',
                        Color.fromRGBO(67, 189, 222, 100),
                        'Heart',
                        'Issue',
                        43),
                    SizedBox(
                      width: Get.width * 0.03,
                    ),
                    speciality(
                        context,
                        'assets/special2.png',
                        Color.fromRGBO(255, 168, 115, 100),
                        'Dental',
                        'Care',
                        19),
                    SizedBox(
                      width: Get.width * 0.03,
                    ),
                    speciality(
                        context,
                        'assets/special3.png',
                        Color.fromRGBO(160, 121, 236, 100),
                        'Physiso',
                        'Therapy',
                        07),
                    SizedBox(
                      width: Get.width * 0.03,
                    ),
                    speciality(
                        context,
                        'assets/special1.png',
                        Color.fromRGBO(151, 190, 69, 100),
                        'Cardio',
                        'Specialist',
                        27),
                    SizedBox(
                      width: Get.width * 0.03,
                    ),
                    speciality(
                        context,
                        'assets/special2.png',
                        Color.fromRGBO(18, 154, 127, 100),
                        'Dental',
                        'Care',
                        27),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              SizedBox(
                  width: Get.width,
                  height: Get.height * 0.16,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    detailss(context, 'Cardio Issues?',
                        'For Cardio patient here can easily contact with doctor. Can chat & live chat.'),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    detailss(context, 'Dental Treatment',
                        'For Dental patient here can easily contact with doctor. Can chat & live chat.'),
                  ])),

              SizedBox(
                height: Get.height * 0.01,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'Top Doctors',
                    fsize: 20,
                    fw: FontWeight.bold,
                  ),
                  Flexible(flex: 2, child: Container()),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DoctorList11()));
                    },
                    child: CustomText(
                      text: 'View all',
                      fsize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              //Doctors
              SizedBox(
                width: Get.width,
                height: Get.height * 0.17,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    doctors(context, 'assets/profile.png', 'Dr. Esther Noi',
                        'Heart Sergon'),
                    SizedBox(
                      width: Get.width * 0.05,
                    ),
                    doctors(context, 'assets/profile.png', 'Dr. Daniela M',
                        'Cardio Sergon'),
                    SizedBox(
                      width: Get.width * 0.05,
                    ),
                    doctors(
                        context, 'assets/profile.png', 'Dr. Carmen', 'Dental'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget searchBar(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.02,
        right: MediaQuery.of(context).size.width * 0.02),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.06,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color.fromRGBO(212, 212, 219, 100),
        )),
    child: Row(
      children: [
        SizedBox(
          width: Get.width * 0.01,
        ),
        SizedBox(
          width: Get.width * 0.6,
          height: Get.height * 0.04,
          child: TextField(
            autofocus: false,
            //cursorColor: AppTheme.colors.themeGreen,
            decoration: InputDecoration(
              hintText: 'Search doctor, categories, topics...',
              hintStyle: TextStyle(color: Color.fromRGBO(160, 162, 179, 1)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide.none //BorderSide(color: Colors.grey),
                  ),
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide.none //new BorderSide(color: Colors.red)
                  ),
            ),
          ),
        ),
        Flexible(flex: 1, child: Container()),
        Container(
          height: Get.height * 0.1,
          width: Get.width * 0.1,
          child: ImageIcon(
            size: 50,
            color: Color.fromRGBO(160, 162, 179, 1),
            AssetImage('assets/search.png'),
          ),
        ),
        SizedBox(
          width: Get.width * 0.01,
        ),
      ],
    ),
  );
}

Widget detailss(BuildContext context, String heading, String detail) {
  return Container(
    width: Get.width * 0.7,
    //height: MediaQuery.of(context).size.height * 0.5,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color.fromRGBO(212, 212, 219, 100),
        )),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: Get.height * 0.02,
        ),
        Container(
            padding: EdgeInsets.only(left: Get.width * 0.02),
            child: CustomText(
              text: heading,
              fsize: 20,
              fw: FontWeight.bold,
            )),
        SizedBox(
          height: Get.height * 0.02,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: Get.width * 0.03,
            ),
            Container(
              height: Get.height * 0.08,
              width: Get.width * 0.01,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(2)),
            ),
            SizedBox(
              width: Get.width * 0.02,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * 0.08,
                  width: Get.width * 0.6,
                  child: Container(
                    child: CustomText(text: detail),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    ),
  );
}

Widget doctors(BuildContext context, String url, String text1, String text2) {
  return SizedBox(
    height: Get.height * 0.3,
    width: Get.width * 0.3,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color.fromRGBO(212, 212, 219, 100))),
      //padding: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: Get.height * 0.005,
          ),
          Container(
            padding: EdgeInsets.all(8),
            height: Get.height * 0.11,
            width: Get.width * 0.25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(246, 246, 246, 100),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/profile.png'))),
            //child: iconn,
          ),
          SizedBox(
            height: Get.height * 0.005,
          ),
          Column(
            children: [
              CustomText(
                text: text1,
                fsize: 20,
                fw: FontWeight.bold,
              ),
              CustomText(
                text: text2,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
