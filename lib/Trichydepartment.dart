import 'package:flutter/material.dart';
import 'package:flutter_application_1/TJNeurodepartment.dart';
import 'package:flutter_application_1/TrichyNeuroscreen.dart';
import 'package:flutter_application_1/Trichygovernmenthospitalscreen.dart';
import 'package:flutter_application_1/Trichyprivatehospitalscreen.dart';

class TrichyDepartmentscreen extends StatefulWidget {
  const TrichyDepartmentscreen({super.key});

  @override
  State<TrichyDepartmentscreen> createState() => _DepartmentscreenState();
}

class _DepartmentscreenState extends State<TrichyDepartmentscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 1,
        title: const Text(
          'Trichy Hospitals',
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
          ),
          Positioned(
            top: 500, // adjust the top position of the buttons
            left: 16, // adjust the left position of the buttons
            right: 16, // adjust the right position of the buttons
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [governmentbutton(), privatebutton()],
            ),
          ),
        ],
      ),
    );
  }
}

class governmentbutton extends StatelessWidget {
  const governmentbutton({super.key});

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
                  builder: (context) =>
                      const Trichygovernmenthospitalscreen()));
        },
        icon: Icon(
          Icons.health_and_safety,
          size: 32,
        ),
        label: Text("Government",
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.black26;
              }
              return Colors.red;
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
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Trichyprivatehospitalscreen()));
        },
        icon: Icon(
          Icons.health_and_safety,
          size: 32,
        ),
        label: Text("Private",
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.black26;
              }
              return Colors.red;
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
      ),
    );
  }
}
