import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'colors.dart' as color;

class RajaMirasudharhospitalscreen extends StatefulWidget {
  const RajaMirasudharhospitalscreen({super.key});

  @override
  State<RajaMirasudharhospitalscreen> createState() =>
      _RajaMirasudharhospitalscreenState();
}

class _RajaMirasudharhospitalscreenState
    extends State<RajaMirasudharhospitalscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color.AppColor.homePageBackground,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 1,
          title: const Text(
            'Raja Mirasudhar Hospital(RMH)',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
            padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
            child: Column(children: [
              const SizedBox(
                height: 150,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 290,
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
                        "Old Bus Stand Road, Anna Salai Street, Tanjore, Thanjavur - 613001 (Near Gandhiji Main Market & Raja Raja Solan Temple)",
                        style: TextStyle(
                            fontSize: 19,
                            color: color.AppColor.homePageContainerTextSmall),
                      ),
                      SizedBox(
                        height: 25,
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
                                    Uri(scheme: 'tel', path: "04362235888");

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
            ])));
  }
}
