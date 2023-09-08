import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  const Two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.green[200],
          body: Column(
            children: [
              Text(
                "N K U S S  Ltd.",
                style: TextStyle(fontSize: 50, color: Colors.cyan[900]),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: ClipOval(
                  child: Image.asset(
                    "Property/NAD_3.jpg",
                    height: 150,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                "Property/NAD_2.jpg",
                height: 200,
              )
            ],
          )),
    );
  }
}
