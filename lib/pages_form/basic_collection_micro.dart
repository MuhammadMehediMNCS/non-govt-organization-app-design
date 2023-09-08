import 'package:flutter/material.dart';

class MicroForm extends StatefulWidget {
  const MicroForm({Key? key}) : super(key: key);

  @override
  State<MicroForm> createState() => _MicroFormState();
}

class _MicroFormState extends State<MicroForm> {
  final _input = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 40, right: 15),
              child: Text(
                'Add Daily Collection (Micro)',
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
                hintText: 'Type Investor Name',
                labelText: 'Investor Name',
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
                hintText: 'Type Daily Loan Account',
                labelText: 'Loan Account',
                labelStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(
                  Icons.pin_outlined,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            TextField(
              controller: _input,
              cursorColor: Colors.green,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                hintText: 'Type Installment Amount',
                labelText: 'Installment Amount',
                labelStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(
                  Icons.attach_money,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            TextField(
              controller: _input,
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
