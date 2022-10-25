import 'package:doctorapp/Widget/CustomText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PatientRequestTile extends StatelessWidget {
  PatientRequestTile({Key? key}) : super(key: key);
  String name = "Nene Kumoji";
  String message =
      "I am a Cardio Patinet. Feel sick last 2 weeks.I need to talk about cardio problem. ";
  String date = "June 12, 10: AM";
  String symptomsTime = "3 Days Symtoms";
  String gender = "Male";
  String age = "30+";
  String type = "House Visit";

  @override
  Widget build(BuildContext context) {
    Color buttonColor = Colors.blue;
    Color nearBlack = Colors.black45;
    Color request = Colors.green;
    return InkWell(
      onTap: () {
        //Get.to(()=>RequestDetails());
      },
      child: Container(
        width: Get.width * 0.9,
        height: Get.height * 0.21,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height * 0.02,
            ),
            Row(
              children: [
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: request,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CustomText(
                      text: "Requested",
                      fsize: 14,
                      fw: FontWeight.w700,
                      color: nearBlack,
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.05,
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Padding(
              padding:
                  EdgeInsets.fromLTRB(Get.width * 0.05, 0, Get.width * 0.05, 0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(width: 3.0, color: buttonColor),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      Get.width * 0.03, 0, Get.width * 0.03, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomText(
                            text: name,
                            fsize: 18,
                            fw: FontWeight.w700,
                          ),
                          Spacer(),
                          CustomText(
                            text: date,
                            fsize: 14,
                            fw: FontWeight.w700,
                          ),
                        ],
                      ),
                      CustomText(
                        text: message,
                        fsize: 14,
                        fw: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            SizedBox(
              width: Get.width * 0.65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/blueTick.png"),
                  SizedBox(
                    width: Get.width * 0.03,
                  ),
                  CustomText(
                      text: symptomsTime,
                      fsize: 14,
                      fw: FontWeight.w700,
                      color: buttonColor),
                  Spacer(),
                  Image.asset("assets/images/blueTick.png"),
                  SizedBox(
                    width: Get.width * 0.03,
                  ),
                  CustomText(
                      text: gender + "            ",
                      fsize: 14,
                      fw: FontWeight.w700,
                      color: buttonColor),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            SizedBox(
              width: Get.width * 0.65,
              child: Row(
                children: [
                  Image.asset("assets/images/blueTick.png"),
                  SizedBox(
                    width: Get.width * 0.03,
                  ),
                  CustomText(
                      text: age,
                      fsize: 14,
                      fw: FontWeight.w700,
                      color: buttonColor),
                  Spacer(),
                  Image.asset("assets/images/blueTick.png"),
                  SizedBox(
                    width: Get.width * 0.03,
                  ),
                  CustomText(
                      text: type,
                      fsize: 14,
                      fw: FontWeight.w700,
                      color: buttonColor),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
