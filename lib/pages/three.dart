import 'package:flutter/material.dart';
import '../DSP_Page.dart';
import '../Micro_Page.dart';
import '../Others_Page.dart';
import '../balance_sheet_page.dart';

class Three extends StatelessWidget {
  const Three({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.green[200],
          body: Column(
            children: [
              Container(
                color: Colors.green[200],
                height: 70.0,
                width: double.infinity,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const DSP();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(220, 50),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    primary: Colors.cyan[900],
                    fixedSize: const Size.fromHeight(50)),
                child: const Text(
                  "DSP",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Micro();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(220, 50),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    primary: Colors.cyan[900],
                    fixedSize: const Size.fromHeight(50)),
                child: const Text(
                  "Micro",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Others();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(220, 50),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    primary: Colors.cyan[900],
                    fixedSize: const Size.fromHeight(50)),
                child: const Text(
                  "Others",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Total();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(220, 50),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    primary: Colors.cyan[900],
                    fixedSize: const Size.fromHeight(50)),
                child: const Text(
                  "Balance Sheet",
                  style: TextStyle(fontSize: 30.0),
                ),
              )
            ],
          )),
    );
  }
}
