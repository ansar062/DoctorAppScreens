import 'package:doctorapp/Screens/patientdetails2.dart';
import 'package:doctorapp/Widget/CustomButton.dart';
import 'package:doctorapp/Widget/CustomText.dart';
import 'package:doctorapp/Widget/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PatientDetailOne extends StatefulWidget {
  const PatientDetailOne({super.key});

  @override
  State<PatientDetailOne> createState() => _PatientDetailOneState();
}

class _PatientDetailOneState extends State<PatientDetailOne> {
  TextEditingController symptomsController = TextEditingController();
  List<bool> selecting = [false, false, false, false, false, false];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  select(int index) {
    if (selecting[index] == false) {
      setState(() {
        selecting[index] = true;
      });
    } else {
      setState(() {
        selecting[index] = false;
      });
    }
  }

  push() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => PatientDetailTwo()));
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
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(246, 246, 246, 100)),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8,
              ),
              CustomText(
                text: 'Select symptoms',
                fsize: 18,
                fw: FontWeight.w700,
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
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                crossAxisCount: 3,
                                children: <Widget>[
                                  InkWell(
                                    onTap: () {
                                      select(0);
                                    },
                                    child: symptoms(context, 'Stomach Pain',
                                        'assets/stoma.png', selecting[0]),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      select(1);
                                    },
                                    child: symptoms(context, 'Ear Pain',
                                        'assets/ear.png', selecting[1]),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      select(2);
                                    },
                                    child: symptoms(context, 'Chest Pain',
                                        'assets/chest.png', selecting[2]),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      select(3);
                                    },
                                    child: symptoms(context, 'Headache',
                                        'assets/head.png', selecting[3]),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      select(4);
                                    },
                                    child: symptoms(context, 'Back Pain',
                                        'assets/back.png', selecting[4]),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      select(5);
                                    },
                                    child: symptoms(context, 'Toothache',
                                        'assets/teeth.png', selecting[5]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'How long have you been',
                        fsize: 18,
                        fw: FontWeight.w700,
                      ),
                      CustomText(
                        text: 'having these symptoms?',
                        fsize: 18,
                        fw: FontWeight.w700,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.21,
                  ),
                  const SizedBox(
                    width: 100.0,
                    child: TextField(
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          height: 2.0,
                          color: Color.fromARGB(255, 69, 120, 190)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Are you currently under any',
                        fsize: 18,
                        fw: FontWeight.w700,
                      ),
                      CustomText(
                        text: 'other medication?',
                        fsize: 18,
                        fw: FontWeight.w700,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.17,
                  ),
                  const SizedBox(
                    width: 100.0,
                    child: TextField(
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          height: 2.0,
                          color: Color.fromARGB(255, 69, 120, 190)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              CustomText(
                text: 'Please describe your symptoms',
                fsize: 18,
                fw: FontWeight.w700,
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              customFields(symptomsController, "Write your symptoms..."),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Center(child: CustomButton(func: push, text: 'Next')),
            ],
          ),
        ),
      ),
    );
  }
}

Widget symptoms(BuildContext context, String name, String url, bool isSelect) {
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
                  child: Image.asset(url),
                ),
              ),
              CustomText(
                text: name,
              )
            ],
          ),
        ),
        Positioned(
            top: -2,
            right: 20,
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

Widget customFields(controller, hint) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: Get.height * 0.13,
        child: TextFormField(
          style: TextStyle(
            color: Color.fromRGBO(119, 122, 149, 100),
            fontSize: 18,
          ),
          controller: controller,
          maxLines: 6,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "$hint",
            hintStyle: TextStyle(
              color: Color.fromRGBO(160, 162, 179, 1),
            ),
            fillColor: Color.fromRGBO(247, 247, 247, 1),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Color.fromRGBO(212, 212, 219, 100), width: 2.0),
              borderRadius: BorderRadius.circular(5.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Color.fromRGBO(212, 212, 219, 100), width: 2.0),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      )
    ],
  );
}
