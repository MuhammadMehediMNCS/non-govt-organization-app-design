import 'package:flutter/material.dart';
import 'package:milon_ngo/pages_search/micro_search.dart';

import 'pages_form/basic_collection_micro.dart';
import 'pages_form/header.dart';


class Micro extends StatefulWidget {
  const Micro({Key? key}) : super(key: key);

  @override
  State<Micro> createState() => _MicroState();
}

class _MicroState extends State<Micro> {
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
                    return const MicroSearch();
                  }));
                },
                icon: const Icon(Icons.search)),
            const SizedBox(width: 13.0),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MicroForm();
                  }));
                },
                icon: const Icon(
                  Icons.add,
                  size: 25.0,
                )),
            const SizedBox(width: 13.0),
            PopupMenuButton(
                elevation: 40,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                icon: const Icon(Icons.more_horiz),
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
                    ])
          ],
        ),
        body: Column(
          children: const [
            Center(
              child: Text(
                "Naogaon Agriculture Co-Operative Society Ltd.",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                "Daily Collection Sheet (Micro)",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
