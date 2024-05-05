import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'colors.dart' as color;

class ThanjavurLabsdepartmentscreen extends StatefulWidget {
  const ThanjavurLabsdepartmentscreen({super.key});

  @override
  State<ThanjavurLabsdepartmentscreen> createState() =>
      _ThanjavurLabsdepartmentscreenState();
}

class _ThanjavurLabsdepartmentscreenState
    extends State<ThanjavurLabsdepartmentscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color.AppColor.homePageBackground,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 1,
          title: const Text(
            'Select Clinic',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
            padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 290,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            color.AppColor.gradientFirst.withOpacity(0.8),
                            color.AppColor.gradientSecond.withOpacity(0.9),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.centerRight),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(80)),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(5, 10),
                            blurRadius: 20,
                            color:
                                color.AppColor.gradientSecond.withOpacity(0.2))
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
                        Text(
                          "Thanjavur Clinical Lab",
                          style: TextStyle(
                              fontSize: 20,
                              color: color.AppColor.homePageContainerTextSmall,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.location_on,
                          color: color.AppColor.homePageContainerTextSmall,
                          size: 24,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "No 1458, South Rampart, South Rampart, S Rampart Rd, Thanjavur, Tamil Nadu 613001 \nTests: Digital XRays,Mobile ECG",
                          style: TextStyle(
                              fontSize: 15,
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
                                      Uri(scheme: 'tel', path: "04362278177");

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
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 290,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            color.AppColor.gradientFirst.withOpacity(0.8),
                            color.AppColor.gradientSecond.withOpacity(0.9),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.centerRight),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(80)),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(5, 10),
                            blurRadius: 20,
                            color:
                                color.AppColor.gradientSecond.withOpacity(0.2))
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
                        Text(
                          "NEW RPG LAB",
                          style: TextStyle(
                              fontSize: 20,
                              color: color.AppColor.homePageContainerTextSmall,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.location_on,
                          color: color.AppColor.homePageContainerTextSmall,
                          size: 24,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "No 21, LM COMPLEX, RR NAGAR, Thanjavur, Tamil Nadu 613005 \nTests: Kidney Function,HIV,Allergy Testing,Blood Group,ECG for Heart Attack,Complete Blood Test",
                          style: TextStyle(
                              fontSize: 14,
                              color: color.AppColor.homePageContainerTextSmall),
                        ),
                        SizedBox(
                          height: 5,
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
                                      Uri(scheme: 'tel', path: "07947421863");

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
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 305,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            color.AppColor.gradientFirst.withOpacity(0.8),
                            color.AppColor.gradientSecond.withOpacity(0.9),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.centerRight),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(80)),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(5, 10),
                            blurRadius: 20,
                            color:
                                color.AppColor.gradientSecond.withOpacity(0.2))
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
                        Text(
                          "Dr Lal PathLabs",
                          style: TextStyle(
                              fontSize: 20,
                              color: color.AppColor.homePageContainerTextSmall,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.location_on,
                          color: color.AppColor.homePageContainerTextSmall,
                          size: 24,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "No.2851/13B, Main Road, Dr. S.J Complex, Arulananda Nagar, Thanjavur \nTests:  Kidney Function,HIV,Allergy Testing,TB Test,Liver Function Test,Cardiac CT Scan,MRI Scan,Harmone Testing",
                          style: TextStyle(
                              fontSize: 14,
                              color: color.AppColor.homePageContainerTextSmall),
                        ),
                        SizedBox(
                          height: 5,
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
                                      Uri(scheme: 'tel', path: "04362231165");

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
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            color.AppColor.gradientFirst.withOpacity(0.8),
                            color.AppColor.gradientSecond.withOpacity(0.9),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.centerRight),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(80)),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(5, 10),
                            blurRadius: 20,
                            color:
                                color.AppColor.gradientSecond.withOpacity(0.2))
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
                        Text(
                          "Aarthi Scans and Labs",
                          style: TextStyle(
                              fontSize: 20,
                              color: color.AppColor.homePageContainerTextSmall,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.location_on,
                          color: color.AppColor.homePageContainerTextSmall,
                          size: 24,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "22, 1, Pudukottai Rd, opp. to Rohini Hospital, New Housing Unit, Thanjavur-613007 \nTests: Harmone Testing,Kidney Function,2D and 3D Sonography,HIV,ECG,Blood Group,Diagnostic Ultrasound,Magnetic Resonance Imaging.",
                          style: TextStyle(
                              fontSize: 14,
                              color: color.AppColor.homePageContainerTextSmall),
                        ),
                        SizedBox(
                          height: 5,
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
                                      Uri(scheme: 'tel', path: "7550075500");

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
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 305,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            color.AppColor.gradientFirst.withOpacity(0.8),
                            color.AppColor.gradientSecond.withOpacity(0.9),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.centerRight),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(80)),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(5, 10),
                            blurRadius: 20,
                            color:
                                color.AppColor.gradientSecond.withOpacity(0.2))
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
                        Text(
                          "MEDALL DIAGNOSTICS",
                          style: TextStyle(
                              fontSize: 20,
                              color: color.AppColor.homePageContainerTextSmall,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.location_on,
                          color: color.AppColor.homePageContainerTextSmall,
                          size: 24,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "South Rampart Thilagar thidal Opp to Sivagangai Park, Thanjavur, Tamil Nadu 613001 \nTests:  Urine Complete Analysis Test,Liver Function Test,Cholosterol Total Test,Thyroid Profile Test,Testosterene Test,Complete Blood Count Test.",
                          style: TextStyle(
                              fontSize: 13.5,
                              color: color.AppColor.homePageContainerTextSmall),
                        ),
                        SizedBox(
                          height: 5,
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
                                      Uri(scheme: 'tel', path: "07339154594");

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
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            color.AppColor.gradientFirst.withOpacity(0.8),
                            color.AppColor.gradientSecond.withOpacity(0.9),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.centerRight),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(80)),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(5, 10),
                            blurRadius: 20,
                            color:
                                color.AppColor.gradientSecond.withOpacity(0.2))
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
                        Text(
                          "Metropolis Pathology Lab",
                          style: TextStyle(
                              fontSize: 20,
                              color: color.AppColor.homePageContainerTextSmall,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.location_on,
                          color: color.AppColor.homePageContainerTextSmall,
                          size: 24,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "No 332, PA Complex, Mangalapuram Main Road, Tanjore, Thanjavur, 613004 \nTests:  No 332, PA Complex, Mangalapuram Main Road, Tanjore, Thanjavur, 613004",
                          style: TextStyle(
                              fontSize: 14,
                              color: color.AppColor.homePageContainerTextSmall),
                        ),
                        SizedBox(
                          height: 5,
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
                                      Uri(scheme: 'tel', path: "+919321272716");

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
              ]),
            )));
  }
}
