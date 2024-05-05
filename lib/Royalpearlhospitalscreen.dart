import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'colors.dart' as color;

class Royalpearlhospitalscreen extends StatefulWidget {
  const Royalpearlhospitalscreen({super.key});

  @override
  State<Royalpearlhospitalscreen> createState() =>
      _RoyalpearlhospitalscreenState();
}

class _RoyalpearlhospitalscreenState extends State<Royalpearlhospitalscreen> {
  List info = [];
  _initData() {
    DefaultAssetBundle.of(context)
        .loadString("json/royalpearl.json")
        .then((value) {
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
            'Royal Pearl Hospital',
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
                        "No 12-C, 3rd Cross East Street, Thillai Nagar, Trichy - 620018",
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
                                    Uri(scheme: 'tel', path: "9952106666");

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
                      itemCount: (info.length.toDouble() / 2).toInt(),
                      itemBuilder: (_, i) {
                        int a = 2 * i;
                        int b = 2 * i + 1;
                        return Row(
                          children: [
                            Container(
                              height: 180,
                              margin: EdgeInsets.only(
                                  left: 30, bottom: 15, top: 15),
                              width:
                                  (MediaQuery.of(context).size.width - 60) / 2,
                              padding: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(info[a]['img']),
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
                                  ]),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    info[a]['title'],
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: color.AppColor.homePageDetail),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 170,
                              width:
                                  (MediaQuery.of(context).size.width - 90) / 2,
                              margin: EdgeInsets.only(
                                  left: 30, bottom: 15, top: 15),
                              padding: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(info[b]['img']),
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
                                  ]),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    info[b]['title'],
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: color.AppColor.homePageDetail),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              )),
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
                        "Royal Pearl Hospital is dedicated to strengthening the field of skull base surgery, providing leading edge and compassionate clinical care for the full range of skull base lesions. We offer a depth and breadth of surgical experience that few institutions can match.",
                        style: TextStyle(
                            fontSize: 15,
                            color: color.AppColor.homePageContainerTextSmall),
                      ),
                    ],
                  ),
                ),
              ),
            ])));
  }
}
