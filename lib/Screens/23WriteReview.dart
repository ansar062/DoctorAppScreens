import 'package:doctorapp/Screens/patientdetails1.dart';
import 'package:doctorapp/Widget/CustomButton.dart';
import 'package:doctorapp/Widget/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class WriteReview23 extends StatefulWidget {
  const WriteReview23({super.key});

  @override
  State<WriteReview23> createState() => _WriteReview23State();
}

class _WriteReview23State extends State<WriteReview23> {
  TextEditingController commentController = TextEditingController();
  List<bool> selected = [false, false];
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
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(246, 246, 246, 100),
                      ),
                      child: Icon(
                        Icons.format_quote_sharp,
                        size: Get.height * 0.1,
                        color: Color.fromRGBO(255, 168, 115, 100),
                      ),
                    ),
                    Positioned(
                        top: -3,
                        right: 0,
                        child: Icon(
                          Icons.check_circle,
                          color: Color.fromARGB(255, 69, 120, 190),
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: 'Completed',
                  fsize: 20,
                  fw: FontWeight.bold,
                ),
                SizedBox(
                  height: Get.height * 0.1,
                  width: Get.width,
                  child: Center(
                    child: Container(
                      child: CustomText(
                          text:
                              'Your appointment booking successfully completed. Dr. Tierra Riely will contact you soon.'),
                    ),
                  ),
                ),
                Center(child: CustomButton(func: pop, text: 'Go to dashboard'))
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
      appBar: AppBar(
        title: Text(
          "Write  review",
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
          decoration: BoxDecoration(color: Color.fromRGBO(246, 246, 246, 100)),
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.19,
                width: Get.width,
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
                        bottom: 10,
                        left: Get.width * 0.55,
                        child: Container(
                          height: Get.height * 0.04,
                          width: Get.width * 0.08,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(1),
                                  spreadRadius: 2,
                                  blurRadius: 5,

                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/quote.png',
                                  ))),
                        )),
                        Positioned(
                        top: 10,
                        left: Get.width * 0.30,
                        child: Container(
                          height: Get.height * 0.04,
                          width: Get.width * 0.08,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(1),
                                  spreadRadius: 2,
                                  blurRadius: 5,

                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/quote1.png',
                                  ))),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              CustomText(
                text: 'How was your experience',
                color: Color.fromRGBO(160, 162, 179, 100),
                fsize: 20,
                fw: FontWeight.bold,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'with',
                    color: Color.fromRGBO(160, 162, 179, 100),
                    fsize: 20,
                    fw: FontWeight.bold,
                  ),
                  CustomText(
                    text: ' Dr. Tierra Riley',
                    color: Color.fromRGBO(119, 122, 149, 100),
                    fsize: 20,
                    fw: FontWeight.bold,
                  ),
                  CustomText(
                    text: ' ?',
                    color: Color.fromRGBO(160, 162, 179, 100),
                    fsize: 20,
                    fw: FontWeight.bold,
                  )
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              RatingBar.builder(
                  initialRating: 4,
                  minRating: .5,
                  maxRating: 5,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  //itemPadding: EdgeInsets.symmetric(horizontal: 1.0),

                  itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Color.fromRGBO(255, 168, 115, 100),
                      ),
                  onRatingUpdate: (rating) {}),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Write a comment',
                    fsize: 18,
                    fw: FontWeight.w700,
                  ),
                  CustomText(text: 'Max 450 Words')
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              customFields(commentController, "Write your comment..."),
              SizedBox(
                height: Get.height * 0.02,
              ),
              CustomText(
                text: 'Would you recommend Dr. Tierra Riley to your friends? ',
                fsize: 18,
                fw: FontWeight.w700,
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        if (selected[0] == false) {
                          setState(() {
                            selected[0] = true;
                            selected[1] = false;
                          });
                        } else {
                          setState(() {
                            selected[0] = false;
                          });
                        }
                      },
                      child: question(
                          context,
                          'Yes',
                          Icon(
                            Icons.check_circle,
                            color: selected[0]
                                ? Color.fromARGB(255, 69, 120, 190)
                                : Color.fromRGBO(229, 229, 233, 100),
                            size: 35,
                          ))),
                  SizedBox(
                    width: Get.width * 0.1,
                  ),
                  InkWell(
                      onTap: () {
                        if (selected[1] == false) {
                          setState(() {
                            selected[1] = true;
                            selected[0] = false;
                          });
                        } else {
                          setState(() {
                            selected[1] = false;
                          });
                        }
                      },
                      child: question(
                          context,
                          'No',
                          Icon(
                            Icons.check_circle,
                            color: selected[1]
                                ? Color.fromARGB(255, 69, 120, 190)
                                : Color.fromRGBO(229, 229, 233, 100),
                            size: 35,
                          ))),
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              CustomButton(func: showAlertDialog, text: 'Submit review')
            ],
          ),
        ),
      ),
    );
  }
}

Widget question(BuildContext context, String text, Icon icon) {
  return Row(
    children: [
      icon,
      CustomText(
        text: text,
        fsize: 20,
      )
    ],
  );
}
