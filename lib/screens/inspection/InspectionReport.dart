import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InspectionList extends StatefulWidget {
  @override
  _InspectionListState createState() => _InspectionListState();
}

class _InspectionListState extends State<InspectionList> {
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
  static const TextStyle detailstyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 11.0,
    letterSpacing: -0.3,
    color: Colors.black,
  );
  static const TextStyle titlestyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 15.0,
    letterSpacing: -0.3,
  );

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
          'INSPECTION REPORT',
          style: appBartexstyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Row for showing Detail
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Owner Detail',
                        style: titlestyle,
                      ),
                      Text(
                        'Name: Abebe Kebede Tadesse',
                        style: detailstyle,
                      ),
                      Text(
                        'Phone: 0911223344 ',
                        style: detailstyle,
                      ),
                      Text(
                        'Email: ababekebede@gmail.com',
                        style: detailstyle,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Owner Detail',
                        style: titlestyle,
                      ),
                      Text(
                        'Name: Abebe Kebede Tadesse',
                        style: detailstyle,
                      ),
                      Text(
                        'Phone: 0911223344 ',
                        style: detailstyle,
                      ),
                      Text(
                        'Email: ababekebede@gmail.com',
                        style: detailstyle,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              ///Column for car showing Detail
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Owner Detail',
                    style: titlestyle,
                  ),
                  Text(
                    'Name: Abebe Kebede Tadesse',
                    style: detailstyle,
                  ),
                  Text(
                    'Phone: 0911223344 ',
                    style: detailstyle,
                  ),
                  Text(
                    'Email: ababekebede@gmail.com',
                    style: detailstyle,
                  ),
                ],
              ),

              ///Images part is going here ...
              GridView.count(
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    height: 108.0,
                    padding: const EdgeInsets.all(8),
                    child: const Text("He'd have you all unravel at the"),
                    color: Colors.teal[100],
                  ),
                  Container(
                    height: 108.0,
                    padding: const EdgeInsets.all(8),
                    child: const Text('Heed not the rabble'),
                    color: Colors.teal[200],
                  ),
                  Container(
                    height: 108.0,
                    padding: const EdgeInsets.all(8),
                    child: const Text('Sound of screams but the'),
                    color: Colors.teal[300],
                  ),
                  Container(
                    height: 108.0,
                    padding: const EdgeInsets.all(8),
                    child: const Text('Who scream'),
                    color: Colors.teal[400],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
