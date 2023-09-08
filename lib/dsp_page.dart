import 'package:flutter/material.dart';
import 'package:milon_ngo/pages_search/dsp_search.dart';
import 'pages_form/basic_collection_dsp.dart';
import 'pages_form/header.dart';

class DSP extends StatefulWidget {
  const DSP({Key? key}) : super(key: key);

  @override
  State<DSP> createState() => _DSPState();
}

class _DSPState extends State<DSP> {
  Future<bool?> warning(BuildContext context) async => showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            title: const Text('Discard Changes?'),
            titlePadding: const EdgeInsets.only(left: 40.0, top: 15.0),
            content: const Text('Changes on this page will not be saved.'),
            contentTextStyle: const TextStyle(fontSize: 10.0),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.black),
                  )),
              const SizedBox(width: 40.0),
              TextButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: const Text(
                    'Discard',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ));

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
                    return const DSPSearch();
                  }));
                },
                icon: const Icon(Icons.search)),
            const SizedBox(width: 13.0),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const DSPForm();
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
                "Daily Collection Sheet (DSP)",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
