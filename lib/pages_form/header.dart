import 'package:flutter/material.dart';

class HeaderForm extends StatefulWidget {
  const HeaderForm({Key? key}) : super(key: key);

  @override
  State<HeaderForm> createState() => _HeaderFormState();
}

class _HeaderFormState extends State<HeaderForm> {
  final TextEditingController _branch = TextEditingController();
  final TextEditingController _code = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 40, right: 15),
                child: Text(
                  'Add Branch Details',
                  style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(height: 35.0),
              TextField(
                controller: _branch,
                cursorColor: Colors.green,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  labelText: 'Type Branch Name',
                  labelStyle: TextStyle(color: Colors.green),
                  prefixIcon: Icon(
                    Icons.account_balance_outlined,
                    color: Colors.green,
                  ),
                ),
                onTap: () {
                  setState(() {
                    _branch.text = 'Branch Name : ';
                  });
                },
              ),
              const SizedBox(height: 25.0),
              TextField(
                controller: _code,
                cursorColor: Colors.green,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  labelText: 'Type Code Number',
                  labelStyle: TextStyle(color: Colors.green),
                  prefixIcon: Icon(Icons.pin_outlined, color: Colors.green),
                ),
                onTap: () {
                  _code.text = 'Code No : ';
                },
              ),
              const SizedBox(height: 25.0),
              TextField(
                controller: _name,
                cursorColor: Colors.green,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  labelText: 'Type Field Worker Name',
                  labelStyle: TextStyle(color: Colors.green),
                  prefixIcon: Icon(
                    Icons.person_add_outlined,
                    color: Colors.green,
                  ),
                ),
                onTap: () {
                  setState(() {
                    _name.text = 'Field Worker Name : ';
                  });
                },
              ),
              const SizedBox(height: 25.0),
              TextField(
                controller: _date,
                cursorColor: Colors.green,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  labelText: 'Type Date',
                  labelStyle: TextStyle(color: Colors.green),
                  prefixIcon: Icon(
                    Icons.calendar_today_outlined,
                    color: Colors.green,
                  ),
                ),
                onTap: () {
                  setState(() {
                    _date.text = 'Collection Date : ';
                  });
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
      ),
    );
  }
}
