import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/RajaMirasudharhospital.dart';
import 'package:flutter_application_1/TMCH.dart';

class Thanjavurgovernmenthospitalscreen extends StatefulWidget {
  const Thanjavurgovernmenthospitalscreen({super.key});

  @override
  State<Thanjavurgovernmenthospitalscreen> createState() =>
      _ThanjavurgovernmenthospitalscreenState();
}

class _ThanjavurgovernmenthospitalscreenState
    extends State<Thanjavurgovernmenthospitalscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 1,
        title: const Text(
          'Select Government Hospitals',
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/hosp.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY:
                      5), // Adjust sigmaX and sigmaY for the desired blur intensity
              child: Container(
                color: Colors.grey.withOpacity(
                    0), // You can adjust the color and opacity here
              ),
            ),
          ),
          Positioned(
            top: 500, // adjust the top position of the buttons
            left: 16, // adjust the left position of the buttons
            right: 16, // adjust the right position of the buttons
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Rajabutton(), privatebutton()],
            ),
          ),
        ],
      ),
    );
  }
}

class Rajabutton extends StatelessWidget {
  const Rajabutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: TextButton.icon(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const RajaMirasudharhospitalscreen()));
        },
        icon: Icon(
          Icons.health_and_safety,
          size: 32,
        ),
        label: Text("Raja Mirasudhar Hospital(RMH)",
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.black26;
              }
              return Colors.blue;
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
      ),
    );
  }
}

class privatebutton extends StatelessWidget {
  const privatebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: TextButton.icon(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TMCHscreen()));
        },
        icon: Icon(
          Icons.health_and_safety,
          size: 32,
        ),
        label: Text("Thanjavur Medical College Hospital(TMCH)",
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.black26;
              }
              return Colors.blue;
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
      ),
    );
  }
}
