import 'package:flutter/material.dart';

class BalanceDescription extends StatefulWidget {
  const BalanceDescription({Key? key}) : super(key: key);

  @override
  State<BalanceDescription> createState() => _BalanceDescriptionState();
}

class _BalanceDescriptionState extends State<BalanceDescription> {
  final TextEditingController _oneThou =
      TextEditingController(text: '1000 x 0 = 0000');
  final TextEditingController _fiveHun =
      TextEditingController(text: '500 x 0 = 000');
  final TextEditingController _twoHun =
      TextEditingController(text: '200 x 0 = 000');
  final TextEditingController _oneHun =
      TextEditingController(text: '100 x 0 = 000');
  final TextEditingController _fifty =
      TextEditingController(text: '50 x 0 = 00');
  final TextEditingController _twenty =
      TextEditingController(text: '20 x 0 = 00');
  final TextEditingController _ten = TextEditingController(text: '10 x 0 = 00');
  final TextEditingController _five = TextEditingController(text: '5 x 0 = 0');
  final TextEditingController _two = TextEditingController(text: '2 x 0 = 0');
  final TextEditingController _one = TextEditingController(text: '1 x 0 = 0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 40, right: 15),
              child: Text(
                'Add Balance Details',
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const SizedBox(height: 50.0),
            TextField(
              controller: _oneThou,
              cursorColor: Colors.green,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: 'Enter 1000 x 1',
                labelStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(
                  Icons.money_outlined,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            TextField(
              controller: _fiveHun,
              cursorColor: Colors.green,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: 'Enter 500 x 1',
                labelStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(
                  Icons.money_outlined,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            TextField(
              controller: _twoHun,
              cursorColor: Colors.green,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: 'Enter 200 x 1',
                labelStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(
                  Icons.money_outlined,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            TextField(
              controller: _oneHun,
              cursorColor: Colors.green,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: 'Enter 100 x 1',
                labelStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(
                  Icons.money_outlined,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            TextField(
              controller: _fifty,
              cursorColor: Colors.green,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: 'Enter 50 x 1',
                labelStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(
                  Icons.money_outlined,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            TextField(
              controller: _twenty,
              cursorColor: Colors.green,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: 'Enter 20 x 1',
                labelStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(
                  Icons.money_outlined,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            TextField(
              controller: _ten,
              cursorColor: Colors.green,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: 'Enter 10 x 1',
                labelStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(
                  Icons.money_outlined,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            TextField(
              controller: _five,
              cursorColor: Colors.green,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: 'Enter 5 x 1',
                labelStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(
                  Icons.money_outlined,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            TextField(
              controller: _two,
              cursorColor: Colors.green,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: 'Enter 2 x 1',
                labelStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(
                  Icons.money_outlined,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            TextField(
              controller: _one,
              cursorColor: Colors.green,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                labelText: 'Enter 1 x 1',
                labelStyle: TextStyle(color: Colors.green),
                prefixIcon: Icon(
                  Icons.money_outlined,
                  color: Colors.green,
                ),
              ),
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
