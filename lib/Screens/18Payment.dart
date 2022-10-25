import 'package:doctorapp/Widget/CustomButton.dart';
import 'package:doctorapp/Widget/CustomText.dart';
import 'package:doctorapp/Widget/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Payment18 extends StatefulWidget {
  const Payment18({super.key});

  @override
  State<Payment18> createState() => _Payment18State();
}

class _Payment18State extends State<Payment18> {
  TextEditingController nameController = TextEditingController();
  TextEditingController cardNoController = TextEditingController();
  TextEditingController expireDateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
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
                        Icons.home,
                        size: Get.height * 0.1,
                        color: Color.fromARGB(255, 69, 120, 190),
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
                Center(child: CustomButton(func: pop, text: 'Appointments'))
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
          decoration: BoxDecoration(color: Color.fromRGBO(246, 246, 246, 100)),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Positioned(
                      child: Container(
                    height: Get.height * 0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 69, 120, 190)),
                  )),
                  Positioned(
                      top: Get.height * 0.03,
                      left: Get.width * 0.05,
                      child: CustomText(
                        text: 'Bank Card',
                        color: Colors.white,
                        fsize: 18,
                        fw: FontWeight.bold,
                      )),
                  Positioned(
                      top: Get.height * 0.14,
                      left: Get.width * 0.1,
                      child: CustomText(
                        text: 'XXXX XXXX XXXX 1234',
                        color: Colors.white,
                        fsize: 18,
                        fw: FontWeight.bold,
                      )),
                  Positioned(
                      top: Get.height * 0.2,
                      left: Get.width * 0.1,
                      child: CustomText(
                        text: '01/23',
                        color: Colors.white,
                        fsize: 18,
                        fw: FontWeight.bold,
                      )),
                  Positioned(
                      bottom: Get.height * 0.02,
                      right: Get.width * 0.09,
                      child: Image.asset('assets/card.png')),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                  child: CustomText(
                      text: 'By adding debit/credit card, you agree to the')),
              Center(
                  child: CustomText(
                text: 'Term & Condition',
                color: Color.fromARGB(255, 69, 120, 190),
              )),
              SizedBox(
                height: 20,
              ),
              overTextField(
                  'Name',
                  Icon(
                    Icons.person_outline,
                    color: Color.fromRGBO(160, 162, 179, 100),
                  )),
              CustomTextField(
                  textEditingController: nameController,
                  hint: 'Enter card holder full name',
                  hintColor: Color.fromRGBO(160, 162, 179, 100)),
              SizedBox(
                height: 15,
              ),
              overTextField(
                  'Card Number',
                  Icon(
                    Icons.credit_card,
                    color: Color.fromRGBO(160, 162, 179, 100),
                  )),
              CustomTextField(
                  textEditingController: cardNoController,
                  hint: 'Enter card holder full name',
                  hintColor: Color.fromRGBO(160, 162, 179, 100)),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      overTextField(
                          'Expire date',
                          Icon(
                            Icons.credit_card,
                            color: Color.fromRGBO(160, 162, 179, 100),
                          )),
                      SizedBox(
                        height: Get.height * 0.1,
                        width: Get.width * 0.4,
                        child: CustomTextField(
                            hint: 'DD-MM-YYYY',
                            textEditingController: expireDateController,
                            hintColor: Color.fromRGBO(160, 162, 179, 100)),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: Get.width * 0.1,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      overTextField(
                          'CVV',
                          Icon(
                            Icons.credit_card,
                            color: Color.fromRGBO(160, 162, 179, 100),
                          )),
                      SizedBox(
                        height: Get.height * 0.1,
                        width: Get.width * 0.4,
                        child: CustomTextField(
                            hint: 'Enter Cvv number',
                            textEditingController: expireDateController,
                            hintColor: Color.fromRGBO(160, 162, 179, 100)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child:
                      CustomButton(func: showAlertDialog, text: 'Payment Now'))
            ],
          ),
        ),
      ),
    );
  }
}

Widget overTextField(String text, Icon icon) {
  return Row(
    children: [
      icon,
      SizedBox(
        width: 10,
      ),
      CustomText(
        text: text,
        color: Color.fromRGBO(119, 122, 149, 100),
        fsize: 18,
        fw: FontWeight.bold,
      )
    ],
  );
}
