import 'package:flutter/material.dart';
import 'package:flutter_application_1/Optionscreen.dart';

class ThanjavurOrthoscreen extends StatefulWidget {
  const ThanjavurOrthoscreen({super.key});

  @override
  State<ThanjavurOrthoscreen> createState() => _ThanjavurOrthoscreenState();
}

class _ThanjavurOrthoscreenState extends State<ThanjavurOrthoscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 1,
        title: const Text(
          'Orthopedics',
          style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/ortho.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 480, // adjust the top position of the buttons
            left: 16, // adjust the left position of the buttons
            right: 16, // adjust the right position of the buttons
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Anubutton(), Kannanbutton()],
            ),
          ),
        ],
      ),
    );
  }
}

class Anubutton extends StatelessWidget {
  const Anubutton({super.key});

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
              MaterialPageRoute(builder: (context) => const Optionscreen()));
        },
        icon: Icon(
          Icons.medical_services,
          size: 32,
        ),
        label: Text("ANU Hospital",
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.lightGreen;
              }
              return Colors.pinkAccent;
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
      ),
    );
  }
}

class Kannanbutton extends StatelessWidget {
  const Kannanbutton({super.key});

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
              MaterialPageRoute(builder: (context) => const Optionscreen()));
        },
        icon: Icon(
          Icons.medical_services,
          size: 32,
        ),
        label: Text("Kannan Hospital",
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.lightGreen;
              }
              return Colors.pinkAccent;
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
      ),
    );
  }
}
