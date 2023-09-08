import 'package:flutter/material.dart';
import 'pages_form/header.dart';
import 'pages_form/total_balance.dart';

class Total extends StatefulWidget {
  const Total({Key? key}) : super(key: key);

  @override
  State<Total> createState() => _TotalState();
}

class _TotalState extends State<Total> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const BalanceDescription();
                  }));
                },
                icon: const Icon(
                  Icons.add,
                  size: 32.0,
                  color: Colors.white,
                )),
            const SizedBox(width: 20.0),
            PopupMenuButton(
                elevation: 40,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                itemBuilder: (context) => [
                      PopupMenuItem(
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const HeaderForm();
                                }));
                              },
                              child: Text(
                                "Add Branch Info",
                                style: TextStyle(color: Colors.green[300]),
                              ))),
                      PopupMenuItem(
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Create File",
                                style: TextStyle(color: Colors.green[300]),
                              )))
                    ]),
          ],
        ),
        body: Column(
          children: const [
            Center(
              child: Text(
                "Naogaon Agriculture Co-Operative Society Ltd.",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
