import 'dart:math';

import 'package:car_inspection/core/styles.dart';
import 'package:car_inspection/screens/inspection/SignatureScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'ResultShow.dart';

class FailShow extends StatefulWidget {
  FailShow({Key? key}) : super(key: key);

  @override
  _FailShowState createState() => _FailShowState();
}

class _FailShowState extends State<FailShow> {
  ///text field styles there name indicate where they apply
  static const TextStyle appBartexstyle = TextStyle(
      fontFamily: "Poppins",
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      fontSize: 24.0,
      color: Colors.white);

  static const TextStyle resulttextStyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w200,
    fontSize: 24.0,
  );

  static const TextStyle inspectionPassedtxtstyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 24.0,
    color: Color(0xFF737CC6),
  );

  static String failSvg = 'assets/failIcon.svg';
  static String passSvg = 'assets/passIcon.svg';
  Widget failIcon = SvgPicture.asset(failSvg);
  Widget passIcon = SvgPicture.asset(
    passSvg,
  );

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          ///empty curved container
          Positioned(
            top: 0.0,
            child: Container(
              width: screenwidth,
              height: screenheight * 0.25,
              decoration: BoxDecoration(
                color: Color(0xFF263238),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
          ),

          ///App Bar Container that holds back and title
          Positioned(
            top: 30,
            left: 20.0,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignatureScreen(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Center(
                    child: Text(
                      'NANO GARAGE',
                      style: appBartexstyle,
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///Passed card container
          Positioned(
            top: screenheight * 0.16,
            child: Container(
              width: 319.0,
              height: 320.0,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 25.0, // soften the shadow
                    spreadRadius: 5.0, //extend the shadow
                    offset: Offset(
                      -10.0, // Move to right 10  horizontally
                      -10.0, // Move to bottom 10 Vertically
                    ),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(const Radius.circular(15.0)),
              ),
              child: Column(
                children: [
                  Text(
                    'RESULTS',
                    style: resulttextStyle,
                  ),
                  Divider(),
                  Container(
                    height: 209,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          minWidth: 70,
                          minHeight: 70,
                          maxWidth: 115,
                          maxHeight: 115),
                      child: failIcon,
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 36,
                    child: Center(
                      child: Text(
                        'Needs Repair',
                        style: inspectionPassedtxtstyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///Report Button container
          Positioned(
            bottom: 100,
            //left: 50,
            child: Container(
              decoration: BoxDecoration(
                color: AppTheme.myPrimaryColor,
                borderRadius: BorderRadius.all(const Radius.circular(16.0)),
              ),
              height: 60.2,
              width: screenwidth * 0.80,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              constraints: const BoxConstraints(maxWidth: 500),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(),
                    ),
                  );
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith(
                    (states) => RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return AppTheme.secondPrimaryColor;
                      return AppTheme.myPrimaryColor;
                    },
                  ),
                ),
                child: Center(
                  child: Text(
                    'REPORT',
                    style: AppTheme.yellowButtonsTextStyle,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CustomAppBar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // I've taken approximate height of curved part of view
    // Change it if you have exact spec for it
    final roundingHeight = size.height * 3 / 5;

    // this is top part of path, rectangle without any rounding
    final filledRectangle =
        Rect.fromLTRB(0, 0, size.width, size.height - roundingHeight);

    // this is rectangle that will be used to draw arc
    // arc is drawn from center of this rectangle, so it's height has to be twice roundingHeight
    // also I made it to go 5 units out of screen on left and right, so curve will have some incline there
    final roundingRectangle = Rect.fromLTRB(
        -50, size.height - roundingHeight * 2, size.width + 50, size.height);

    final path = Path();
    path.addRect(filledRectangle);

    // so as I wrote before: arc is drawn from center of roundingRectangle
    // 2nd and 3rd arguments are angles from center to arc start and end points
    // 4th argument is set to true to move path to rectangle center, so we don't have to move it manually
    path.arcTo(roundingRectangle, pi, -pi, true);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
