import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Trichyprivateambulancescreen extends StatefulWidget {
  const Trichyprivateambulancescreen({super.key});

  @override
  State<Trichyprivateambulancescreen> createState() =>
      _TrichyprivateambulancescreenState();
}

class _TrichyprivateambulancescreenState
    extends State<Trichyprivateambulancescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 1,
        title: const Text(
          'Trichy Private Ambulance',
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
                            SelectableText('Babu Ambulance',
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
                                  Uri(scheme: 'tel', path: "7487914983");

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
                            SelectableText('Prabhu Ambulance',
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
                                  Uri(scheme: 'tel', path: "8460465998");

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
                            SelectableText('Sri Sai Ambulance',
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
                                  Uri(scheme: 'tel', path: "8511854253");

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
                            SelectableText('Vanjinathan Ambulance',
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
                                  Uri(scheme: 'tel', path: "8147527934");

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
                            SelectableText('Sri Murugan Ambulance',
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
                                  Uri(scheme: 'tel', path: "9054760959");

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
                            SelectableText('Annai Ambulance',
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
                                  Uri(scheme: 'tel', path: "7947426428");

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
                            SelectableText('Raja Ambulance',
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
                                  Uri(scheme: 'tel', path: "7947426502");

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
