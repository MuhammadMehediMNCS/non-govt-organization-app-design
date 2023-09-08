import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'pages/one.dart';
import 'pages/three.dart';
import 'pages/two.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController(
    initialPage: 0,
  );

  Future<bool?> warning(BuildContext context) async => showDialog<bool>(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            title: const Text('Confirmation Message :'),
            titlePadding: const EdgeInsets.only(left: 15.0, top: 15.0),
            content: const Text('Do You want to Exit this App?\nClick Below'),
            //contentTextStyle: TextStyle(fontSize: 45.0),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: const Text(
                    'No',
                    style: TextStyle(color: Colors.black),
                  )),
              const SizedBox(width: 40.0),
              TextButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: const Text(
                    'Yes',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ));

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final showPop = await warning(context);
        return showPop ?? false;
      },
      child: Scaffold(
          backgroundColor: Colors.green[200],
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 560.0,
                child: PageView(
                  controller: _controller,
                  children: const [One(), Two(), Three()],
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: const JumpingDotEffect(
                  activeDotColor: Colors.teal,
                  dotColor: Colors.white,
                  spacing: 20.0,
                ),
              )
            ],
          )),
    );
  }
}
