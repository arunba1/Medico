import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'colors.dart' as color;

class Retnahospitalscreen extends StatefulWidget {
  const Retnahospitalscreen({super.key});

  @override
  State<Retnahospitalscreen> createState() => _RetnahospitalscreenState();
}

class _RetnahospitalscreenState extends State<Retnahospitalscreen> {
  List info = [];
  _initData() {
    DefaultAssetBundle.of(context).loadString("json/retna.json").then((value) {
      setState(() {
        info = json.decode(value);
      });
    });
  }

  @override
  void initState() {
    _initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color.AppColor.homePageBackground,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 1,
          title: const Text(
            'Retna Global Hospital',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
            padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
            child: Column(children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      color.AppColor.gradientFirst.withOpacity(0.8),
                      color.AppColor.gradientSecond.withOpacity(0.9),
                    ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(80)),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(5, 10),
                          blurRadius: 20,
                          color: color.AppColor.gradientSecond.withOpacity(0.2))
                    ]),
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 25,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: color.AppColor.homePageContainerTextSmall,
                        size: 24,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "No 95/1, Pattabiraman Street, Tennur, Trichy - 620017",
                        style: TextStyle(
                            fontSize: 17.4,
                            color: color.AppColor.homePageContainerTextSmall),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 25,
                              ),
                              Text(
                                "Emergency Contact Us",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: color
                                        .AppColor.homePageContainerTextSmall),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                    color: color.AppColor.gradientFirst,
                                    blurRadius: 10,
                                    offset: Offset(4, 8),
                                  )
                                ]),
                            child: InkWell(
                              onTap: () async {
                                final Uri url =
                                    Uri(scheme: 'tel', path: "9843273705");

                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                } else {
                                  print("Cannot Launch");
                                }
                              },
                              child: Icon(
                                Icons.call_rounded,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Departments Available",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.pink),
                  )
                ],
              ),
              Expanded(
                child: OverflowBox(
                  maxWidth: MediaQuery.of(context).size.width,
                  child: MediaQuery.removePadding(
                    removeTop: true,
                    context: context,
                    child: ListView.builder(
                        itemCount: (info.length.toDouble() / 3)
                            .ceil(), // Calculate the number of rows
                        itemBuilder: (_, i) {
                          int a = 3 * i;
                          int b = 3 * i + 1;
                          int c = 3 * i + 2;
                          return Row(
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 180,
                                      margin: EdgeInsets.only(
                                          left: 15,
                                          bottom: 15,
                                          top: 15,
                                          right: 7.5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                          image: AssetImage(info[a]['img']),
                                          fit: BoxFit.cover,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3,
                                            offset: Offset(5, 5),
                                            color: color.AppColor.gradientSecond
                                                .withOpacity(0.1),
                                          ),
                                          BoxShadow(
                                            blurRadius: 3,
                                            offset: Offset(-5, -5),
                                            color: color.AppColor.gradientSecond
                                                .withOpacity(0.1),
                                          )
                                        ],
                                      ),
                                    ),
                                    // Positioned(
                                    //   left: 0,
                                    //   right: 0,
                                    //   bottom:
                                    //       10, // Adjust this value to change the vertical position of the text
                                    //   child: Padding(
                                    //     padding: const EdgeInsets.symmetric(
                                    //         horizontal: 8.0),
                                    //     child: Text(
                                    //       info[a]['title'],
                                    //       textAlign: TextAlign
                                    //           .center, // Align text in the center horizontally
                                    //       style: TextStyle(
                                    //         fontSize: 22,
                                    //         fontWeight: FontWeight.bold,
                                    //         color:
                                    //             color.AppColor.homePageDetail,
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              // Repeat the same structure for other images (b and c)

                              Expanded(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 180,
                                      margin: EdgeInsets.only(
                                          left: 15,
                                          bottom: 15,
                                          top: 15,
                                          right: 7.5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                          image: AssetImage(info[b]['img']),
                                          fit: BoxFit.cover,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3,
                                            offset: Offset(5, 5),
                                            color: color.AppColor.gradientSecond
                                                .withOpacity(0.1),
                                          ),
                                          BoxShadow(
                                            blurRadius: 3,
                                            offset: Offset(-5, -5),
                                            color: color.AppColor.gradientSecond
                                                .withOpacity(0.1),
                                          )
                                        ],
                                      ),
                                    ),
                                    // Positioned(
                                    //   left: 0,
                                    //   right: 0,
                                    //   bottom:
                                    //       10, // Adjust this value to change the vertical position of the text
                                    //   child: Padding(
                                    //     padding: const EdgeInsets.symmetric(
                                    //         horizontal: 8.0),
                                    //     child: Text(
                                    //       info[b]['title'],
                                    //       textAlign: TextAlign
                                    //           .center, // Align text in the center horizontally
                                    //       style: TextStyle(
                                    //         fontSize: 22,
                                    //         fontWeight: FontWeight.bold,
                                    //         color:
                                    //             color.AppColor.homePageDetail,
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 180,
                                      margin: EdgeInsets.only(
                                          left: 15,
                                          bottom: 15,
                                          top: 15,
                                          right: 7.5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                          image: AssetImage(info[c]['img']),
                                          fit: BoxFit.cover,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3,
                                            offset: Offset(5, 5),
                                            color: color.AppColor.gradientSecond
                                                .withOpacity(0.1),
                                          ),
                                          BoxShadow(
                                            blurRadius: 3,
                                            offset: Offset(-5, -5),
                                            color: color.AppColor.gradientSecond
                                                .withOpacity(0.1),
                                          )
                                        ],
                                      ),
                                    ),
                                    // Positioned(
                                    //   left: 0,
                                    //   right: 0,
                                    //   bottom:
                                    //       10, // Adjust this value to change the vertical position of the text
                                    //   child: Padding(
                                    //     padding: const EdgeInsets.symmetric(
                                    //         horizontal: 8.0),
                                    //     child: Text(
                                    //       info[c]['title'],
                                    //       textAlign: TextAlign
                                    //           .center, // Align text in the center horizontally
                                    //       style: TextStyle(
                                    //         fontSize: 22,
                                    //         fontWeight: FontWeight.bold,
                                    //         color: Colors.purple,
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 265,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      color.AppColor.gradientFirst.withOpacity(0.8),
                      color.AppColor.gradientSecond.withOpacity(0.9),
                    ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(5, 10),
                          blurRadius: 20,
                          color: color.AppColor.gradientSecond.withOpacity(0.2))
                    ]),
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 5,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.description_rounded,
                              color: color.AppColor.homePageContainerTextSmall),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "About Us",
                            style: TextStyle(
                                fontSize: 23,
                                color:
                                    color.AppColor.homePageContainerTextSmall,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      // Text(
                      //   "About",
                      //   style: TextStyle(
                      //       fontSize: 24,
                      //       color: color.AppColor.homePageContainerTextSmall,
                      //       fontWeight: FontWeight.bold),
                      // ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Retna Global Hospital is a recognized name in patient care.They are one of the well-known Multispecialty Hospitals in Tennur. Backed with a vision to offer the best in patient care and equipped with technologically advanced healthcare facilities.",
                        style: TextStyle(
                            fontSize: 16.5,
                            color: color.AppColor.homePageContainerTextSmall),
                      ),
                    ],
                  ),
                ),
              ),
            ])));
  }
}
