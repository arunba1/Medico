import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'colors.dart' as color;

class TrichyLabsDepartmentscreen extends StatefulWidget {
  const TrichyLabsDepartmentscreen({super.key});

  @override
  State<TrichyLabsDepartmentscreen> createState() =>
      _TrichyLabsDepartmentscreenState();
}

class _TrichyLabsDepartmentscreenState
    extends State<TrichyLabsDepartmentscreen> {
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
                          "Kaveri Laboratory",
                          style: TextStyle(
                              fontSize: 20,
                              color: color.AppColor.homePageContainerTextSmall,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
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
                          "1, Keechathiram Road, Near Indian Bank Tennur, Tiruchirappalli - 620017 \nTests: Urine Complete Analysis,Complete Blood Count,ECG,Lipid Profile,Glucose Levels Testing",
                          style: TextStyle(
                              fontSize: 15,
                              color: color.AppColor.homePageContainerTextSmall),
                        ),
                        SizedBox(
                          height: 15,
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
                                      Uri(scheme: 'tel', path: "04312742300");

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
                          "M R Diagnostic Centre",
                          style: TextStyle(
                              fontSize: 20,
                              color: color.AppColor.homePageContainerTextSmall,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
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
                          "No 10 Spca Complex, Evr Road, Opposite Government Hospital Puthur, Tiruchirappalli - 620017 \nTests: Sugar Test,Thyroid Test,Cholestrol Test,Harmones Test,HIV,HBV Viral Load,Vitamin D,Vitamin B12.",
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
                                      Uri(scheme: 'tel', path: "9443127912");

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
                  height: 295,
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
                          "Metro Diagnostic Center",
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
                          "No 34/79, P V S Kovil Street, Near Post Office Woriyur, Tiruchirappalli - 620003 \nTests:  Food Intolerance Test,CBC Test Tyroid Test,Lipid profile Test,Allergy panel Test.",
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
                                      Uri(scheme: 'tel', path: "9578146012");

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
                          "Aarthi Diagnostics",
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
                          "No C-72 First Floor, 10th Cross West Thillai Nagar, Tiruchirappalli - 620018 \nTests: MRI Scan,CT Scan,XRay Scans,Sugar Test,Cholesterol test,HbA1c Test",
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
                                      Uri(scheme: 'tel', path: "8870355551");

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
                          "Lakshmi Blood Testing Centre",
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
                          "116, Kamarajar Salai Melakalkandarkottai, Tiruchirappalli - 620011 \nTests:  Platelet Count,Uric acid Test,Hemoglobin Test,Cholesterol Test,Blood Sugar Test,Kidney Funtion Test,Pregnancy Test.",
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
                                      Uri(scheme: 'tel', path: "9789737595");

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
                          "Mercury Computerised Clinical Laboratory",
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
                          "No 62 / 58 A, Golden Rock, Near Ambikapuram Bus Stop East Ambikapuram, Tiruchirappalli - 620004",
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
                                      Uri(scheme: 'tel', path: "9443103375");

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
