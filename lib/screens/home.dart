import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'CompletedList.dart';
import 'Dashboard.dart';
import 'Profile.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    new Completed(),
    new DashBoard(),
    new ShowProfile()
  ];

  static String completedSelectedSvg = 'assets/unseletedCompleted.svg';
  static String inspectSvg = 'assets/unselectedInspect.svg';
  static String profileSvg = 'assets/user.svg';
  static String selectedInspectSvg = 'assets/selectedInspect.svg';

  Widget completedicon = SvgPicture.asset(
    completedSelectedSvg,
  );
  Widget selectedInspectIcon = SvgPicture.asset(
    selectedInspectSvg,
  );
  Widget inspectionicon = SvgPicture.asset(
    inspectSvg,
  );
  Widget profileicon = SvgPicture.asset(profileSvg);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomAppBar(
        child: Container(
            height: 67,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                    child: Container(height: 40, child: completedicon),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                    child: Container(
                      height: 45,
                      child: selectedInspectIcon,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                    child: Container(height: 40, child: profileicon),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
