import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'ContactUsScreen.dart';
import 'ManualScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
String? inputText;
  var items = [
    '   GOLD',
    '    USD',
    '   EURO',
    'BITCOIN',
  ];
  List heading = [
    'Break for Down - key Point',
    'Support 1',
    'Support 2',
    'Target 1',
    'Best Low Reversal Point',
    'Target 2',
    '',
    '',
    'Break Will continue Down',
    '',
    'Phase Completed',
    '',
    'New Phase Down IF passed',
    '',
    '',
    ''
  ];
  List heading1 = [
    '',
    '',
    '',
    'New Phase UP IF passed',
    '',
    'Phase Completed',
    '',
    'Break will continue UP ',
    '',
    '',
    'Target 2',
    'Best High Reversal Point',
    'Target 1',
    'Resistance 2-Most Important ',
    'Resistance 1',
    'Break for UP',
  ];
  List minusNumber = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ];
  TextEditingController userInputController = TextEditingController();
  TextEditingController tradingController = TextEditingController();
  List<int> plusNumber = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ];
  bool isPressed = false;

  void updateList() {
    List<int> fixedPlusNumber = [
      309,
      212,
      177,
      165,
      146,
      127,
      105,
      97,
      78,
      68,
      59,
      55,
      42,
      35,
      23,
      14
    ];

    setState(() {
      // Get the user input value
      int userInput = int.tryParse(userInputController.text) ?? 0;

      // Use a for loop to update each element in the list
      for (int i = 0; i < fixedPlusNumber.length; i++) {
        fixedPlusNumber[i] += userInput;
      }
    });
    plusNumber = fixedPlusNumber;
  }

  void updateSubList() {
    List fixedMinusNumber = [
      14,
      23,
      35,
      42,
      55,
      59,
      68,
      78,
      97,
      105,
      127,
      146,
      165,
      177,
      212,
      309
    ];

    setState(() {
      // Get the user input value
      int userInput = int.tryParse(userInputController.text) ?? 0;

      // Use a for loop to update each element in the list
      for (int i = 0; i < fixedMinusNumber.length; i++) {
        fixedMinusNumber[i] = userInput - fixedMinusNumber[i];
      }
    });
    minusNumber = fixedMinusNumber;
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width * 10;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: width * 0.014,
          leading: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.002),
            child: SvgPicture.asset('assets/cal3.svg'),
          ),
          backgroundColor: Colors.orange,
          title: Padding(
            padding: EdgeInsets.only(left: width * 0.002),
            child: const Text(
              "FXPIPSTRADER",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ),
          actions: [
            InkWell(onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) =>  ManualScreen(),));

            },
              child: SvgPicture.asset('assets/question.svg',
                  color: Colors.white, width: width * 0.007),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.002),
              child: IconButton(
                  onPressed: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactUsScreen(),));

                    },
                  icon: const Icon(
                    Icons.email,
                    color: Colors.white,
                    size: 30,
                  )),
            )
          ],
        ),
        body: Column(children: [
          Container(
            color: Colors.blue.withOpacity(0.58),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding:   EdgeInsets.only(top: height*0.008),
                  child: TextFormField(onChanged: (value) {
                  setState(() {
                    inputText=value;
                  });
                  },
                    controller: tradingController,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelStyle: const TextStyle(color: Colors.white),
                        contentPadding: EdgeInsets.only(top: height * 0.008),
                        border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Enter Trading Pair (eX.USDCAD)',
                        hintStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.004),
                  child: const Divider(
                    color: Colors.white,
                    thickness: 1.2,
                  ),
                ),
                TextFormField(
                  controller: userInputController,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelStyle: const TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.only(top: height * 0.008),
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: 'Enter NY Closing Price',
                      hintStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.004),
                  child: const Divider(
                    color: Colors.white,
                    thickness: 3,
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(
                            Size(width * 0.05, height * 0.06)),
                        side: const MaterialStatePropertyAll(BorderSide(
                          width: 2.4,
                          color: Colors.white,
                        )),
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.transparent)),
                    onPressed: () {
                      updateList();
                      updateSubList();
                      setState(() {
                        isPressed = true;
                      });
                    },
                    child: const Text(
                      "CALCULATE",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                TabBar(
                    dividerColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.white,

                          width: 5, // Width of the indicator
                        ),
                      ),
                    ),
                    tabs: [
                      Tab(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: height * 0.012,
                              ),
                              child:  Text(
                                tradingController.text,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_drop_down_sharp,
                              color: Colors.white,
                              size: 54,
                            )
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: height * 0.012,
                              ),
                              child:  Text(
                                tradingController.text,
                                style:const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_drop_up_sharp,
                              color: Colors.black,
                              size: 54,
                            )
                          ],
                        ),
                      )
                    ]),
                SizedBox(
                  height: height * 0.002,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.002),
            child: const Divider(
              color: Colors.red,
              thickness: 6,
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                //Tab1

                ListView.builder(
                  itemCount: heading.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.white,
                      elevation: 0.4,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(heading[index],
                                style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500)),
                            isPressed == false
                                ? Text(
                              inputText??'',
                                    style: index == 6 ||
                                        index == 7||
                                        index == 9 ||
                                        index == 11||
                                        index == 13 ||
                                        index == 14||
                                        index == 15

                                        ? const TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500)
                                        : const TextStyle(
                                            color: Colors.red,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                  )
                                : Text(
                              minusNumber.isNotEmpty
                                        ? minusNumber[index].toString()
                                        : '000',
                                    style: index == 6 ||
                                        index == 7||
                                        index == 9 ||
                                        index == 11||
                                        index == 13 ||
                                        index == 14||
                                        index == 15
                                        ? const TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500)
                                        : const TextStyle(
                                            color: Colors.red,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                  ),
                          ]),
                    );
                  },
                ),
                //Tab2
                ListView.builder(
                  itemCount: heading1.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.white,
                      elevation: 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            heading1[index],
                            style: const TextStyle(
                              color: Colors.green,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          isPressed == false
                              ? Text(
                            inputText??'',
                                  style: index == 0 ||
                                          index == 1 ||
                                          index == 2 ||
                                          index == 4 ||
                                          index == 6 ||
                                          index == 8 ||
                                          index == 9
                                      ? const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)
                                      : const TextStyle(
                                          color: Colors.green,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                )
                              : Text(
                                  plusNumber.isNotEmpty
                                      ? plusNumber[index].toString()
                                      : '000',
                                  style:index == 0 ||
                                      index == 1 ||
                                      index == 2 ||
                                      index == 4 ||
                                      index == 6 ||
                                      index == 8 ||
                                      index == 9
                                      ? const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)
                                      : const TextStyle(
                                          color: Colors.green,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
