import 'package:car_inspection/models/cars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'inspection/InspectionReport.dart';

class Completed extends StatefulWidget {
  @override
  _CompletedState createState() => _CompletedState();
}

class _CompletedState extends State<Completed> {
  List<Cars> persons = [
    Cars(
        owner: 'Abebe Kebede',
        carName: 'Tesla',
        year: '2008',
        carpic: 'images/carImage.png',
        pass: true),
    Cars(
        owner: 'Abebe Kebede',
        carName: 'Vitz',
        year: '2008',
        carpic: 'images/carImage.png',
        pass: false),
    Cars(
        owner: 'Abebe Kebede',
        carName: 'Tesla',
        year: '2017',
        carpic: 'images/carImage.png',
        pass: true),
    Cars(
        owner: 'Abebe Kebede',
        carName: 'Ford',
        year: '2020',
        carpic: 'images/carImage.png',
        pass: false),
  ];

  ///owner text style
  static const TextStyle ownertxtStyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 24.0,
    letterSpacing: 0.15,
  );

  ///model text style
  static const TextStyle modeltextStyle = TextStyle(
    fontFamily: "Roboto",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 14.0,
    letterSpacing: 0.15,
  );

  static const TextStyle calandertxtStyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 14.0,
    letterSpacing: 0.15,
    color: Colors.black,
  );
  static const TextStyle passtxtStyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
    letterSpacing: 0.15,
    color: Color(0xFFF8AB27),
  );
  static const TextStyle failxtStyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
    letterSpacing: 0.15,
    color: Color(0xFFD24A43),
  );

  Widget personDetailCard(Cars cars) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Container(
        height: 150.0,
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: new BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(cars.carpic)))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    cars.owner,
                    style: ownertxtStyle,
                  ),
                  Text(
                    cars.carName + " " + cars.year,
                    style: modeltextStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    cars.pass ? "inspection pass" : "inspection fail",
                    style: cars.pass ? passtxtStyle : failxtStyle,
                  ),
                  Row(
                    children: [
                      Container(
                        child: calenderIcon,
                      ),
                      Text(
                        '   01 April 2021',
                        style: calandertxtStyle,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  static String calenderSvg = 'assets/calandersvg.svg';
  Widget calenderIcon = SvgPicture.asset(calenderSvg);

  static const TextStyle appBartexstyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 24.0,
    letterSpacing: 0.15,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    ///getting scren size for later use of elements
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF263238),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 26,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'COMPLETED',
          style: appBartexstyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    height: 50,
                    width: screenwidth * 0.95,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        // hintText: "Search",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InspectionList()));
                },
                child: Column(
                    children: persons.map((p) {
                  return personDetailCard(p);
                }).toList()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
