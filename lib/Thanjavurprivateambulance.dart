import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ThanjavurprivateAmbulancescreen extends StatefulWidget {
  const ThanjavurprivateAmbulancescreen({super.key});

  @override
  State<ThanjavurprivateAmbulancescreen> createState() =>
      _ThanjavurprivateAmbulancescreenState();
}

class _ThanjavurprivateAmbulancescreenState
    extends State<ThanjavurprivateAmbulancescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 1,
        title: const Text(
          'Thanjavur Private Ambulance',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/Ambulance.jpg'), // Replace 'assets/background_image.jpg' with your actual image path
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: 8.5,
                  sigmaY:
                      8.5), // Adjust sigmaX and sigmaY for the desired blur intensity
              child: Container(
                color: Colors.grey.withOpacity(
                    0), // You can adjust the color and opacity here
              ),
            ),
          ),
          // Box decoration with button
          Positioned(
            top: 190,
            child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue
                          .withOpacity(0.5), // Adjust opacity as needed
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.call,
                              size: 26,
                              color: Colors.pink,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            SelectableText('Sri Vishnu Ambulance',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))
                          ],
                        ),
                        const SizedBox(
                          width: 0,
                        ),
                        ElevatedButton(
                            onPressed: () async {
                              final Uri url =
                                  Uri(scheme: 'tel', path: "8734820718");

                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                print("Cannot Launch");
                              }
                            },
                            child: Text("Call"))
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue
                          .withOpacity(0.5), // Adjust opacity as needed
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.call,
                              size: 26,
                              color: Colors.pink,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            SelectableText('Hi Tech Ambulance',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))
                          ],
                        ),
                        const SizedBox(
                          width: 0,
                        ),
                        ElevatedButton(
                            onPressed: () async {
                              final Uri url =
                                  Uri(scheme: 'tel', path: "9035117987");

                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                print("Cannot Launch");
                              }
                            },
                            child: Text("Call"))
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue
                          .withOpacity(0.5), // Adjust opacity as needed
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.call,
                              size: 26,
                              color: Colors.pink,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            SelectableText('Samy Ambulance',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))
                          ],
                        ),
                        const SizedBox(
                          width: 0,
                        ),
                        ElevatedButton(
                            onPressed: () async {
                              final Uri url =
                                  Uri(scheme: 'tel', path: "7947124991");

                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                print("Cannot Launch");
                              }
                            },
                            child: Text("Call"))
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue
                          .withOpacity(0.5), // Adjust opacity as needed
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.call,
                              size: 26,
                              color: Colors.pink,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            SelectableText('Abi Abi Ambulance',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))
                          ],
                        ),
                        const SizedBox(
                          width: 0,
                        ),
                        ElevatedButton(
                            onPressed: () async {
                              final Uri url =
                                  Uri(scheme: 'tel', path: "7947420663");

                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                print("Cannot Launch");
                              }
                            },
                            child: Text("Call"))
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue
                          .withOpacity(0.5), // Adjust opacity as needed
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.call,
                              size: 26,
                              color: Colors.pink,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            SelectableText('MR Ambulance',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))
                          ],
                        ),
                        const SizedBox(
                          width: 0,
                        ),
                        ElevatedButton(
                            onPressed: () async {
                              final Uri url =
                                  Uri(scheme: 'tel', path: "7947420714");

                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                print("Cannot Launch");
                              }
                            },
                            child: Text("Call"))
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue
                          .withOpacity(0.5), // Adjust opacity as needed
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.call,
                              size: 26,
                              color: Colors.pink,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            SelectableText('Tamil Ambulance',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))
                          ],
                        ),
                        const SizedBox(
                          width: 0,
                        ),
                        ElevatedButton(
                            onPressed: () async {
                              final Uri url =
                                  Uri(scheme: 'tel', path: "7942688331");

                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                print("Cannot Launch");
                              }
                            },
                            child: Text("Call"))
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue
                          .withOpacity(0.5), // Adjust opacity as needed
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.call,
                              size: 26,
                              color: Colors.pink,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            SelectableText('Meenakshi Ambulance',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))
                          ],
                        ),
                        const SizedBox(
                          width: 0,
                        ),
                        ElevatedButton(
                            onPressed: () async {
                              final Uri url =
                                  Uri(scheme: 'tel', path: "7947429265");

                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                print("Cannot Launch");
                              }
                            },
                            child: Text("Call"))
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
