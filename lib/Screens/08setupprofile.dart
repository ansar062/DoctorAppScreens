import 'package:doctorapp/Screens/18Payment.dart';
import 'package:doctorapp/Widget/CustomButton.dart';
import 'package:doctorapp/Widget/CustomText.dart';
import 'package:doctorapp/Widget/CustomTextField.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetUpProfile extends StatefulWidget {
  const SetUpProfile({super.key});

  @override
  State<SetUpProfile> createState() => _SetUpProfileState();
}

class _SetUpProfileState extends State<SetUpProfile> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _dateofbirthController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  SingleValueDropDownController _genderController =
      SingleValueDropDownController();
  List<String> gender = ['male', 'female'];
  String? selectedValue;
  pp(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                height: Get.height * 0.01,
              ),
              CustomText(
                text: 'Set up your Profile',
                fsize: 20,
                fw: FontWeight.bold,
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              SizedBox(
                width: Get.width * 0.7,
                height: Get.height * 0.04,
                child: Container(
                  child: CustomText(
                    text:
                        'Update your profile to connect your doctor with better impression.',
                    fsize: 16,
                  ),
                ),
              ),
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
                        bottom: 0,
                        left: Get.width * 0.42,
                        child: InkWell(
                          onTap: () {
                            // select Image From Gallery or Camera
                          },
                          child: Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color.fromARGB(255, 69, 120, 190),
                              ),
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              overTextField(
                  'Full name',
                  Icon(
                    Icons.person_outline_outlined,
                    color: Color.fromRGBO(160, 162, 179, 100),
                  )),
              CustomTextField(
                  textEditingController: _nameController,
                  hint: 'Enter your full name',
                  hintColor: Color.fromRGBO(160, 162, 179, 100)),
              SizedBox(
                height: Get.height * 0.02,
              ),
              overTextField(
                  'Email',
                  Icon(
                    Icons.email_outlined,
                    color: Color.fromRGBO(160, 162, 179, 100),
                  )),
              CustomTextField(
                  textEditingController: _emailController,
                  hint: 'manikstk@gmail.com',
                  hintColor: Color.fromRGBO(160, 162, 179, 100)),
              SizedBox(
                height: Get.height * 0.02,
              ),
              overTextField(
                  'Gender',
                  Icon(
                    Icons.people_alt_outlined,
                    color: Color.fromRGBO(160, 162, 179, 100),
                  )),
              DropDownTextField(
                controller: _genderController,
                isEnabled: true,
                listSpace: 20,
                listPadding: ListPadding(top: 20),
                textStyle: TextStyle(color: Color.fromRGBO(160, 162, 179, 100)),
                validator: (value) {
                  if (value == null) {
                    return "Required field";
                  } else {
                    return null;
                  }
                },
                dropDownList: const [
                  DropDownValueModel(name: 'Male', value: "m"),
                  DropDownValueModel(name: 'Female', value: "f"),
                ],
                listTextStyle:
                    const TextStyle(color: Color.fromRGBO(160, 162, 179, 100)),
                dropDownItemCount: 2,
                onChanged: (val) {
                  setState(() {
                    _genderController.dropDownValue = val;
                    String vale = _genderController.dropDownValue!.name.toString();
                    print(val);
                    print(vale);
                  });
                },
              ),
              
              SizedBox(
                height: Get.height * 0.02,
              ),
              overTextField(
                  'Date of birth',
                  Icon(
                    Icons.cake_outlined,
                    color: Color.fromRGBO(160, 162, 179, 100),
                  )),
              CustomTextField(
                  textEditingController: _dateofbirthController,
                  hint: 'Type of your date birth',
                  hintColor: Color.fromRGBO(160, 162, 179, 100)),
              SizedBox(
                height: Get.height * 0.02,
              ),
              overTextField(
                  'Address',
                  Icon(
                    Icons.location_city,
                    color: Color.fromRGBO(160, 162, 179, 100),
                  )),
              CustomTextField(
                  textEditingController: _addressController,
                  hint: 'Enter your address',
                  hintColor: Color.fromRGBO(160, 162, 179, 100)),

SizedBox(
  height: Get.height*0.01,
),
                  Center(child: CustomButton(func: pp, text: 'Complete'))
            ],
          ),
        ),
      ),
    );
  }
}
