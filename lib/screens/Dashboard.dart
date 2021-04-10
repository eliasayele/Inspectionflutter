import 'package:car_inspection/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'inspection/vehicleData.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  static const TextStyle texstyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 18.0,
    color: Colors.black,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 18.0,
    color: AppTheme.myPrimaryColor,
  );

  static String completedSvg = 'assets/inspect.svg';
  static String inspectSvg = 'assets/completed.svg';
  Widget completedicon = SvgPicture.asset(completedSvg);
  Widget inspecticon = SvgPicture.asset(inspectSvg);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'NANO GARAGE',
          style: texstyle,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset("images/homecar.png"),
            SizedBox(
              height: 20,
            ),

            ///inspection button with svg in it
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(const Radius.circular(16.0)),
              ),
              height: 60.2,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              constraints: const BoxConstraints(maxWidth: 500),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VehicleData()));
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith(
                    (states) => RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return AppTheme.secondPrimaryColor;
                      return Colors.white;
                      AppTheme.myPrimaryColor;
                      // Use the component's default.
                    },
                  ),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: completedicon,
                      ),
                      Text(
                        'INSPECT',
                        style: buttonTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(const Radius.circular(16.0)),
              ),
              height: 60.2,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              constraints: const BoxConstraints(maxWidth: 500),
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => OTPPage()));
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith(
                    (states) => RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return AppTheme.secondPrimaryColor;
                      return Colors.white;
                      AppTheme.myPrimaryColor;
                      // Use the component's default.
                    },
                  ),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: inspecticon,
                      ),
                      Text(
                        'COMPLETED',
                        style: buttonTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
