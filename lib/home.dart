import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mood_tracker/widgets.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  late String currentMood = 'assets/animations/load.json';
  double H = 200;
  double W = 200;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    FirebaseFirestore.instance
        .collection('mood')
        .doc('7vhNH1y6kS1mexGvqOig')
        .get()
        .then((value) {
      setState(() {
        currentMood = value.data()?['current'];

        if (currentMood == 'assets/animations/sad.json') {
          H = 300;
          W = 300;
        }

        if (currentMood == 'assets/animations/mad.json') {
          H = 300;
          W = 300;
        }

        if (currentMood == 'assets/animations/sick.json') {
          H = 300;
          W = 300;
        }

        if (currentMood == 'assets/animations/tired.json') {
          H = 300;
          W = 300;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: SafeArea(
            child: MediaQuery.of(context).size.width < 640
                ? Padding(
                    padding: EdgeInsets.all(20),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/images/mood.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Hello user, how do you feel today ?",
                          style: GoogleFonts.fasthand(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      currentMood =
                                          'assets/animations/happy.json';
                                      H = 200;
                                      W = 200;

                                      Map<String, String> dataUpdate = {
                                        'current':
                                            'assets/animations/happy.json'
                                      };

                                      FirebaseFirestore.instance
                                          .collection('mood')
                                          .doc('7vhNH1y6kS1mexGvqOig')
                                          .update(dataUpdate);
                                    });
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 80,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        'Happy',
                                        style: GoogleFonts.fasthand(
                                            fontSize: 22,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      currentMood =
                                          'assets/animations/sad.json';
                                      H = 300;
                                      W = 300;

                                      Map<String, String> dataUpdate = {
                                        'current': 'assets/animations/sad.json'
                                      };

                                      FirebaseFirestore.instance
                                          .collection('mood')
                                          .doc('7vhNH1y6kS1mexGvqOig')
                                          .update(dataUpdate);
                                    });
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 80,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        ' Sad ',
                                        style: GoogleFonts.fasthand(
                                            fontSize: 22,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      currentMood =
                                          'assets/animations/mad.json';
                                      H = 300;
                                      W = 300;
                                      Map<String, String> dataUpdate = {
                                        'current': 'assets/animations/mad.json'
                                      };

                                      FirebaseFirestore.instance
                                          .collection('mood')
                                          .doc('7vhNH1y6kS1mexGvqOig')
                                          .update(dataUpdate);
                                    });
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 80,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        'Mad',
                                        style: GoogleFonts.fasthand(
                                            fontSize: 22,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      currentMood =
                                          'assets/animations/sick.json';
                                      H = 300;
                                      W = 300;

                                      Map<String, String> dataUpdate = {
                                        'current': 'assets/animations/sick.json'
                                      };

                                      FirebaseFirestore.instance
                                          .collection('mood')
                                          .doc('7vhNH1y6kS1mexGvqOig')
                                          .update(dataUpdate);
                                    });
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 80,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        'Sick',
                                        style: GoogleFonts.fasthand(
                                            fontSize: 22,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      currentMood =
                                          'assets/animations/tired.json';
                                      H = 300;
                                      W = 300;

                                      Map<String, String> dataUpdate = {
                                        'current':
                                            'assets/animations/tired.json'
                                      };

                                      FirebaseFirestore.instance
                                          .collection('mood')
                                          .doc('7vhNH1y6kS1mexGvqOig')
                                          .update(dataUpdate);
                                    });
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 80,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        'Tired',
                                        style: GoogleFonts.fasthand(
                                            fontSize: 22,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        animation(
                          currentMood,
                          H,
                          W,
                        )
                      ]),
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.all(20),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('assets/images/mood.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Hello, how do you feel today ?",
                          style: GoogleFonts.fasthand(
                              fontSize: 40, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      currentMood =
                                          'assets/animations/happy.json';
                                      H = 200;
                                      W = 200;

                                      Map<String, String> dataUpdate = {
                                        'current':
                                            'assets/animations/happy.json'
                                      };

                                      FirebaseFirestore.instance
                                          .collection('mood')
                                          .doc('7vhNH1y6kS1mexGvqOig')
                                          .update(dataUpdate);
                                    });
                                  },
                                  child: Container(
                                    height: 70,
                                    width: 100,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        'Happy',
                                        style: GoogleFonts.fasthand(
                                            fontSize: 30,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      currentMood =
                                          'assets/animations/sad.json';
                                      H = 300;
                                      W = 300;

                                      Map<String, String> dataUpdate = {
                                        'current': 'assets/animations/sad.json'
                                      };

                                      FirebaseFirestore.instance
                                          .collection('mood')
                                          .doc('7vhNH1y6kS1mexGvqOig')
                                          .update(dataUpdate);
                                    });
                                  },
                                  child: Container(
                                    height: 70,
                                    width: 100,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        ' Sad ',
                                        style: GoogleFonts.fasthand(
                                            fontSize: 30,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      currentMood =
                                          'assets/animations/mad.json';
                                      H = 300;
                                      W = 300;
                                      Map<String, String> dataUpdate = {
                                        'current': 'assets/animations/mad.json'
                                      };

                                      FirebaseFirestore.instance
                                          .collection('mood')
                                          .doc('7vhNH1y6kS1mexGvqOig')
                                          .update(dataUpdate);
                                    });
                                  },
                                  child: Container(
                                    height: 70,
                                    width: 100,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        'Mad',
                                        style: GoogleFonts.fasthand(
                                            fontSize: 30,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      currentMood =
                                          'assets/animations/sick.json';
                                      H = 300;
                                      W = 300;

                                      Map<String, String> dataUpdate = {
                                        'current': 'assets/animations/sick.json'
                                      };

                                      FirebaseFirestore.instance
                                          .collection('mood')
                                          .doc('7vhNH1y6kS1mexGvqOig')
                                          .update(dataUpdate);
                                    });
                                  },
                                  child: Container(
                                    height: 70,
                                    width: 100,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        'Sick',
                                        style: GoogleFonts.fasthand(
                                            fontSize: 30,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      currentMood =
                                          'assets/animations/tired.json';
                                      H = 300;
                                      W = 300;

                                      Map<String, String> dataUpdate = {
                                        'current':
                                            'assets/animations/tired.json'
                                      };

                                      FirebaseFirestore.instance
                                          .collection('mood')
                                          .doc('7vhNH1y6kS1mexGvqOig')
                                          .update(dataUpdate);
                                    });
                                  },
                                  child: Container(
                                    height: 70,
                                    width: 100,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        'Tired',
                                        style: GoogleFonts.fasthand(
                                            fontSize: 30,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        animation(
                          currentMood,
                          H,
                          W,
                        )
                      ]),
                    ),
                  )),
      ),
    );
  }
}
