import 'package:doctorapp/Screens/patientdetails1.dart';
import 'package:doctorapp/Widget/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectSpeciality extends StatefulWidget {
  const SelectSpeciality({super.key});

  @override
  State<SelectSpeciality> createState() => _SelectSpecialityState();
}

class _SelectSpecialityState extends State<SelectSpeciality> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select Speciality",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromRGBO(246, 246, 246, 100),
      ),
      body: SingleChildScrollView(
        child: Container(
          //padding: EdgeInsets.all(16),
          decoration: BoxDecoration(color: Color.fromRGBO(246, 246, 246, 100)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.01,
              ),
              Container(
                padding: EdgeInsets.only(left: Get.width * 0.03),
                child: CustomText(text: 'Specialist', fsize: 18, fw: FontWeight.bold,)),
              
              SizedBox(
                height: Get.height * 0.75,
                width: Get.width,
                child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          ListView(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              GridView(

                                primary: false,
                                padding: const EdgeInsets.all(20),
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                                maxCrossAxisExtent: 140,
                                childAspectRatio: 0.7,
                                ),
                                
                                
                                children: <Widget>[
                                  speciality(
                                      context,
                                      'assets/special1.png',
                                      Color.fromRGBO(69, 120, 190, 100),
                                      'Cardio', 'Specialist', 27),
                                      speciality(context, 'assets/special2.png', Color.fromRGBO(255, 168, 115, 100), 'Dental', 'Care', 19),
                                      speciality(context, 'assets/special3.png', Color.fromRGBO(160, 121, 236, 100), 'Physiso', 'Therapy', 07),
                                      speciality(context, 'assets/special4.png', Color.fromRGBO(67, 189, 222, 100), 'Heart', 'Issue', 43),
                                      speciality(context, 'assets/special1.png', Color.fromRGBO(18, 154, 127, 100), 'Cardio', 'Specialist', 27),
                                      speciality(context, 'assets/special2.png', Color.fromRGBO(119, 122, 149, 100), 'Dental', 'Care', 07),
                                      speciality(context, 'assets/special1.png', Color.fromRGBO(160, 162, 179, 100), 'Cardio', 'Specialist', 27),
                                      speciality(context, 'assets/special2.png', Color.fromRGBO(255, 168, 115, 100), 'Dental', 'Care', 19),
                                      speciality(context, 'assets/special3.png', Color.fromRGBO(160, 121, 236, 100), 'Physiso', 'Therapy', 07),
                                      speciality(context, 'assets/special4.png', Color.fromRGBO(67, 189, 222, 100), 'Heart', 'Issue', 43),
                                      speciality(context, 'assets/special1.png', Color.fromRGBO(151, 190, 69, 100), 'Cardio', 'Specialist', 27),
                                      speciality(context, 'assets/special2.png', Color.fromRGBO(18, 154, 127, 100), 'Dental', 'Care', 27),
                                      speciality(context, 'assets/special3.png', Color.fromRGBO(119, 122, 149, 100), 'Physiso', 'Therapy', 19),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget speciality(
    BuildContext context, String url, Color color1, String text1, String text2, int numb) {
  return SizedBox(
    height: Get.height * 0.2,
    width: Get.width * 0.23,
    child: Container(
      decoration:
          BoxDecoration(color: color1, borderRadius: BorderRadius.circular(10)),
      //padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: ImageIcon(
              size: 50,
              color: Colors.white,
              AssetImage(url,),
            )
          ),
          Column(
            children: [
              CustomText(
                text: text1,
                color: Colors.white,
                fsize: 20,
                fw: FontWeight.bold,
              ),
              CustomText(
                text: text2,
                fw: FontWeight.bold,
                color: Colors.white,
                fsize: 20,
              ),

            ],
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          CustomText(text: '${numb} Doctors', color: Colors.white, fsize: 12,)
        ],
      ),
    ),
  );
}
