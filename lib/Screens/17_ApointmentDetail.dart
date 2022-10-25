import 'package:doctorapp/Widget/CustomText.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApointmentDetail17 extends StatefulWidget {
  const ApointmentDetail17({super.key});

  @override
  State<ApointmentDetail17> createState() => _ApointmentDetail17State();
}

class _ApointmentDetail17State extends State<ApointmentDetail17> {
  final List<String> items = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  List<String> daytiming = [
    '09:00 AM',
    '09:30 AM',
    '10:00 AM',
    '10:30 AM',
    '11:00 AM',
    '11:30 AM'
  ];
  List<String> nighttiming = [
    '01:00 AM',
    '01:30 AM',
    '02:00 AM',
    '02:30 AM',
    '03:00 AM',
    '03:30 AM'
  ];
  String? selectedValue;
  bool isDay = true;
  DateTime selectedDate = DateTime.now(); // TO tracking date

  int currentDateSelectedIndex = 0; //For Horizontal Date
  ScrollController scrollController = ScrollController();
  //To Track Scroll of ListView

  List<String> listOfDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
  

  List<bool> selectingdaynight = [false, false];
  List<bool> selectingTime = [false, false, false, false, false, false];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedValue = items[selectedDate.month - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Appointment',
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
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(246, 246, 246, 100)),
        padding: EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(60),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/calender.png',
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.02,
              ),
              CustomText(
                text: 'Select Day',
                fsize: 18,
                fw: FontWeight.w700,
              ),
              SizedBox(
                height: 8,
              ),
              CustomText(
                text: 'Mon - Fri 09.00AM - 08.00PM',
              )
            ],
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          DropdownButtonHideUnderline(
            child: DropdownButton2(
              icon: Icon(Icons.keyboard_arrow_down_outlined),
              hint: CustomText(
                text: 'Select Month',
                fsize: 18,
                fw: FontWeight.w700,
              ),
              items: items
                  .map((e) => DropdownMenuItem<String>(
                      value: e,
                      child: CustomText(
                        text: e,
                        fsize: 16,
                        fw: FontWeight.w700,
                      )))
                  .toList(),
              value: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value as String;
                });
              },
              buttonHeight: 40,
              buttonWidth: 140,
              itemHeight: 40,
            ),
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Column(
            children: [
              Container(
                  height: 80,
                  child: Container(
                      child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 10);
                    },
                    itemCount: 365,
                    controller: scrollController,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            currentDateSelectedIndex = index;
                            selectedDate =
                                DateTime.now().add(Duration(days: index));
                                selectedValue = items[selectedDate.month - 1];
                          });
                        },
                        child: Container(
                          height: 80,
                          width: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: currentDateSelectedIndex == index
                                  ? Color.fromARGB(255, 69, 120, 190)
                                  : Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                DateTime.now()
                                    .add(Duration(days: index))
                                    .day
                                    .toString(),
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    color: currentDateSelectedIndex == index
                                        ? Color.fromRGBO(125, 160, 209, 100)
                                        : Color.fromRGBO(214, 215, 223, 100)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                listOfDays[DateTime.now()
                                            .add(Duration(days: index))
                                            .weekday -
                                        1]
                                    .toString(),
                                style: TextStyle(
                                    fontSize: 16,
                                    color: currentDateSelectedIndex == index
                                        ? Colors.white
                                        : Color.fromRGBO(119, 122, 149, 100)),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ))),
            ],
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          CustomText(
            text: 'Select time',
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
                  if (selectingdaynight[0] == true) {
                    setState(() {
                      selectingdaynight[0] = false;
                    });
                  } else {
                    setState(() {
                      selectingdaynight[0] = true;
                      selectingdaynight[1] = false;
                      isDay = true;
                    });
                  }
                },
                child: selectDayNight(
                    context,
                    'Morning',
                    Icon(Icons.sunny,
                        color: selectingdaynight[0]
                            ? Color.fromARGB(255, 69, 120, 190)
                            : Color.fromRGBO(160, 162, 179, 100)),
                    selectingdaynight[0]),
              ),
              InkWell(
                onTap: () {
                  if (selectingdaynight[1] == true) {
                    setState(() {
                      selectingdaynight[1] = false;
                      isDay = false;
                    });
                  } else {
                    setState(() {
                      selectingdaynight[1] = true;
                      selectingdaynight[0] = false;
                      isDay = true;
                    });
                  }
                },
                child: selectDayNight(
                    context,
                    'Evening',
                    Icon(Icons.nightlight,
                        color: selectingdaynight[1]
                            ? Color.fromARGB(255, 69, 120, 190)
                            : Color.fromRGBO(160, 162, 179, 100)),
                    selectingdaynight[1]),
              ),
            ],
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          SizedBox(
              height: Get.height * 0.32,
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            if (selectingTime[0] == true) {
                              setState(() {
                                selectingTime[1] = false;
                                selectingTime[2] = false;
                                selectingTime[3] = false;
                                selectingTime[4] = false;
                                selectingTime[5] = false;
                                selectingTime[0] = false;
                              });
                            } else {
                              setState(() {
                                selectingTime[0] = true;
                                selectingTime[1] = false;
                                selectingTime[2] = false;
                                selectingTime[3] = false;
                                selectingTime[4] = false;
                                selectingTime[5] = false;
                              });
                            }
                          },
                          child:
                              times(context, daytiming[0], selectingTime[0])),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      InkWell(
                          onTap: () {
                            if (selectingTime[1] == true) {
                              setState(() {
                                selectingTime[0] = false;
                                selectingTime[2] = false;
                                selectingTime[3] = false;
                                selectingTime[4] = false;
                                selectingTime[5] = false;
                                selectingTime[1] = false;
                              });
                            } else {
                              setState(() {
                                selectingTime[1] = true;
                                selectingTime[0] = false;
                                selectingTime[2] = false;
                                selectingTime[3] = false;
                                selectingTime[4] = false;
                                selectingTime[5] = false;
                              });
                            }
                          },
                          child:
                              times(context, daytiming[1], selectingTime[1])),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      InkWell(
                          onTap: () {
                            if (selectingTime[2] == true) {
                              setState(() {
                                selectingTime[0] = false;
                                selectingTime[1] = false;
                                selectingTime[3] = false;
                                selectingTime[4] = false;
                                selectingTime[5] = false;
                                selectingTime[2] = false;
                              });
                            } else {
                              setState(() {
                                selectingTime[2] = true;
                                selectingTime[1] = false;
                                selectingTime[0] = false;
                                selectingTime[3] = false;
                                selectingTime[4] = false;
                                selectingTime[5] = false;
                              });
                            }
                          },
                          child:
                              times(context, daytiming[2], selectingTime[2])),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      InkWell(
                          onTap: () {
                            if (selectingTime[3] == true) {
                              setState(() {
                                selectingTime[1] = false;
                                selectingTime[2] = false;
                                selectingTime[0] = false;
                                selectingTime[4] = false;
                                selectingTime[5] = false;
                                selectingTime[3] = false;
                              });
                            } else {
                              setState(() {
                                selectingTime[3] = true;
                                selectingTime[1] = false;
                                selectingTime[2] = false;
                                selectingTime[0] = false;
                                selectingTime[4] = false;
                                selectingTime[5] = false;
                              });
                            }
                          },
                          child:
                              times(context, daytiming[3], selectingTime[3])),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            if (selectingTime[4] == true) {
                              setState(() {
                                selectingTime[1] = false;
                                selectingTime[2] = false;
                                selectingTime[3] = false;
                                selectingTime[0] = false;
                                selectingTime[5] = false;
                                selectingTime[4] = false;
                              });
                            } else {
                              setState(() {
                                selectingTime[4] = true;
                                selectingTime[1] = false;
                                selectingTime[2] = false;
                                selectingTime[3] = false;
                                selectingTime[0] = false;
                                selectingTime[5] = false;
                              });
                            }
                          },
                          child:
                              times(context, daytiming[4], selectingTime[4])),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      InkWell(
                          onTap: () {
                            if (selectingTime[5] == true) {
                              setState(() {
                                selectingTime[5] = false;
                                selectingTime[1] = false;
                                selectingTime[2] = false;
                                selectingTime[3] = false;
                                selectingTime[4] = false;
                                selectingTime[0] = false;
                              });
                            } else {
                              setState(() {
                                selectingTime[5] = true;
                                selectingTime[1] = false;
                                selectingTime[2] = false;
                                selectingTime[3] = false;
                                selectingTime[4] = false;
                                selectingTime[0] = false;
                              });
                            }
                          },
                          child:
                              times(context, daytiming[5], selectingTime[5])),
                    ],
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}

Widget selectDayNight(
    BuildContext context, String name, Icon iconn, bool isSelected) {
  return Container(
    margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.02,
        right: MediaQuery.of(context).size.width * 0.02),
    width: MediaQuery.of(context).size.width * 0.40,
    height: MediaQuery.of(context).size.height * 0.07,
    decoration: BoxDecoration(
        color: isSelected ? Color.fromARGB(255, 69, 120, 190) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color.fromRGBO(212, 212, 219, 100),
        )),
    child: Row(
      children: [
        SizedBox(
          width: 5,
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(246, 246, 246, 100),
          ),
          child: iconn,
        ),
        SizedBox(
          width: Get.width * 0.07,
        ),
        CustomText(
            text: name,
            fsize: 20,
            fw: FontWeight.w700,
            color:
                isSelected ? Colors.white : Color.fromRGBO(160, 162, 179, 100)),
      ],
    ),
  );
}

Widget selectTime(BuildContext context, bool isSelected, String time) {
  return Container(
    margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.02,
        right: MediaQuery.of(context).size.width * 0.02),
    width: MediaQuery.of(context).size.width * 0.40,
    height: MediaQuery.of(context).size.height * 0.07,
    decoration: BoxDecoration(
        color: isSelected ? Color.fromARGB(255, 69, 120, 190) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color.fromRGBO(212, 212, 219, 100),
        )),
    child: Container(
      padding: EdgeInsets.all(8),
      child: CustomText(
        text: time,
      ),
    ),
  );
}

Widget times(BuildContext context, String tme, bool isSelected) {
  return Container(
    width: Get.width * 0.2,
    //padding: EdgeInsets.only(right: Get.width*0.04),
    height: MediaQuery.of(context).size.height * 0.06,
    decoration: BoxDecoration(
        color: isSelected ? Color.fromARGB(255, 69, 120, 190) : Colors.white,
        border: Border.all(color: Color.fromRGBO(212, 212, 219, 100)),
        borderRadius: BorderRadius.circular(10)),
    child: Center(
        child: CustomText(
      text: tme,
      color: isSelected ? Colors.white : Color.fromRGBO(160, 162, 179, 1),
    )),
  );
}
