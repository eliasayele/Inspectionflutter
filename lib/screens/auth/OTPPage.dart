import 'dart:async';

import 'package:car_inspection/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:inspection/Models/User.dart';

// import 'package:provider/provider.dart';

///OPT Management

final inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(8.0),
  borderSide: BorderSide(color: Colors.grey.shade400),
);

final inputDecoration = InputDecoration(
  // counter: SizedBox.shrink(),
  counterText: "",
  contentPadding: EdgeInsets.symmetric(vertical: 16.0),
  border: inputBorder,
  focusedBorder: inputBorder,
  enabledBorder: inputBorder,
);

class OTPPage extends StatefulWidget {
  @override
  _OTPPageState createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  ///credit to stack overflow, timer code is copied form there
  ///but it was painful because it's too buggy and needs to be refactor
  final interval = const Duration(seconds: 1);

  final int timerMaxSeconds = 180;

  int currentSeconds = 0;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}: ${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  ///

  @override
  void initState() {
    super.initState();

    ///we have to start timer when the screen is opened

    // startTimeout([int? milliseconds]) {
    var duration = interval;
    Timer.periodic(duration, (timer) {
      if (mounted) {
        setState(() {
          currentSeconds = timer.tick;
          if (timer.tick >= timerMaxSeconds) timer.cancel();
        });
      } else if (!mounted) {
        timer.cancel();
      }
    });
    // }
  }

  @override
  void dispose() {
    super.dispose();
  }

  ///otp page build method
  @override
  Widget build(BuildContext context) {
    //var userProvider = Provider.of<User>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30.0),
              Text(
                "Please enter the 4-digit that we have sent to you",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0),
              ),
              const SizedBox(height: 20.0),
              OTPFields(),
              const SizedBox(height: 20.0),
              Text(
                "Expiring in " + timerText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
              const SizedBox(height: 10.0),
              TextButton(
                child: Text(
                  "RESEND CODE",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    currentSeconds = 0;
                  });
                },
              ),
              const SizedBox(height: 30.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppTheme.myPrimaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  padding: const EdgeInsets.all(16.0),
                  minimumSize: Size(150, 25),
                ),
                child: Text(
                  "Confirm",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  //if (currentSeconds > timerMaxSeconds)
                  Navigator.pushReplacementNamed(context, '/home');
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OTPFields extends StatefulWidget {
  const OTPFields({
    Key? key,
  }) : super(key: key);

  @override
  _OTPFieldsState createState() => _OTPFieldsState();
}

class _OTPFieldsState extends State<OTPFields> {
  late FocusNode pin2FN;
  late FocusNode pin3FN;
  late FocusNode pin4FN;
  final pinStyle = TextStyle(fontSize: 32, fontWeight: FontWeight.bold);

  @override
  void initState() {
    super.initState();
    pin2FN = FocusNode();
    pin3FN = FocusNode();
    pin4FN = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FN.dispose();
    pin3FN.dispose();
    pin4FN.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    // var userProvider = Provider.of<User>(context);

    return Form(
      child: Column(
        children: [
          const SizedBox(height: 10.0),

          ///num input fields
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ///1 field
              SizedBox(
                width: 60,
                child: TextFormField(
                  // initialValue: userProvider.getOtp != null
                  //     ? userProvider.getOtp![0]
                  //     : "",
                  maxLength: 1,
                  autofocus: true,
                  style: pinStyle,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: inputDecoration,
                  onChanged: (value) {
                    nextField(value, pin2FN);
                  },
                ),
              ),

              ///2 field
              SizedBox(
                width: 60,
                child: TextFormField(
                  // initialValue:userProvider.getOtp![1]
                  // initialValue: userProvider.getOtp != null
                  //     ? userProvider.getOtp![1]
                  //     : "",
                  maxLength: 1,
                  focusNode: pin2FN,
                  style: pinStyle,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: inputDecoration,
                  onChanged: (value) => nextField(value, pin3FN),
                ),
              ),

              ///3 field
              SizedBox(
                width: 60,
                child: TextFormField(
                  // initialValue: userProvider.getOtp != null
                  //     ? userProvider.getOtp![2]
                  //     : "",
                  focusNode: pin3FN,
                  style: pinStyle,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: inputDecoration,
                  maxLength: 1,
                  onChanged: (value) => nextField(value, pin4FN),
                ),
              ),

              ///4 field
              SizedBox(
                width: 60,
                child: TextFormField(
                  // initialValue: userProvider.getOtp != null
                  //     ? userProvider.getOtp![3]
                  //     : "",
                  maxLength: 1,
                  focusNode: pin4FN,
                  style: pinStyle,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: inputDecoration,
                  onChanged: (value) {
                    if (value.length == 1) {
                      pin4FN.unfocus();
                    }
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
