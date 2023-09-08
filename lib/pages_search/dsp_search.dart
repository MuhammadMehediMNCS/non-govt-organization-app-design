import 'package:flutter/material.dart';

class DSPSearch extends StatefulWidget {
  const DSPSearch({Key? key}) : super(key: key);

  @override
  State<DSPSearch> createState() => _DSPSearchState();
}

class _DSPSearchState extends State<DSPSearch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              cursorColor: Colors.green[200],
              decoration: const InputDecoration(
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: Colors.grey)),
                  hintText: "Search Your Collection",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey)),
              onChanged: (val) {
                setState(() {});
              },
            ),
          ],
        ),
      )),
    );
  }
}
