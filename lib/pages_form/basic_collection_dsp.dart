import 'package:flutter/material.dart';

class DSPForm extends StatefulWidget {
  const DSPForm({Key? key}) : super(key: key);

  @override
  State<DSPForm> createState() => _DSPFormState();
}

class _DSPFormState extends State<DSPForm> {
  final _type = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 40, right: 15),
              child: Text(
                'Add Daily Collection (DSP)',
                style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const SizedBox(height: 35.0),
            const TextField(
              cursorColor: Colors.green,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                hintText: 'Type Serial Number',
                labelText: 'SL No',
                labelStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(
                  Icons.format_list_numbered_outlined,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            const TextField(
              cursorColor: Colors.green,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                hintText: 'Type Depositor Name',
                labelText: 'Depositor Name',
                labelStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(
                  Icons.person_add_outlined,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            const TextField(
              cursorColor: Colors.green,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                hintText: 'Type Daily Deposit Number',
                labelText: 'Deposit Number',
                labelStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(
                  Icons.pin_outlined,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            TextField(
              controller: _type,
              cursorColor: Colors.green,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                hintText: 'Type Deposit Amount',
                labelText: 'Deposit Amount',
                labelStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(
                  Icons.attach_money,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            TextField(
              controller: _type,
              showCursor: false,
              cursorColor: Colors.green,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: 'Receive Amount',
                labelStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(
                  Icons.attach_money,
                  color: Colors.green,
                ),
              ),
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
            ),
            const SizedBox(height: 60.0),
            SizedBox(
              width: 130.0,
              height: 40.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  elevation: 3,
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
