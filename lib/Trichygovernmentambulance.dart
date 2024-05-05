import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Trichygovernmentambulancescreen extends StatefulWidget {
  const Trichygovernmentambulancescreen({super.key});

  @override
  State<Trichygovernmentambulancescreen> createState() =>
      _TrichygovernmentambulancescreenState();
}

class _TrichygovernmentambulancescreenState
    extends State<Trichygovernmentambulancescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 1,
        title: const Text(
          'Government Ambulance',
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
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
                  sigmaX: 2,
                  sigmaY:
                      2), // Adjust sigmaX and sigmaY for the desired blur intensity
              child: Container(
                color: Colors.grey.withOpacity(
                    0), // You can adjust the color and opacity here
              ),
            ),
          ),
          // Box decoration with button
          Positioned(
            top: 730,
            child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.purple
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
                              size: 36,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            SelectableText('108',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            onPressed: () async {
                              final Uri url = Uri(scheme: 'tel', path: "108");

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
