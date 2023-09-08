import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

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
              const SizedBox(height: 50.0),
              Center(
                child: ClipOval(
                  child: Image.asset(
                    "Property/NAD.jpg",
                    height: 150,
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              Image.asset(
                "Property/NAD_1.jpg",
                height: 200,
              )
            ],
          )),
    );
  }
}
