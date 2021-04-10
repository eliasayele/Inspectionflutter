import 'package:car_inspection/core/global.dart';
import 'package:car_inspection/core/styles.dart';
import 'package:flutter/material.dart';

import 'PhotosScreen.dart';
import 'SignatureScreen.dart';

class InspectionScreen extends StatefulWidget {
  const InspectionScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InspectionScreenState();
}

class _InspectionScreenState extends State<InspectionScreen> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  static const TextStyle appBartexstyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 24.0,
    color: Colors.white,
  );
  Image carImage = new Image(
    image: new ExactAssetImage("images/carblack.png"),
    fit: BoxFit.fitWidth,
  );

  List<String> labels = [
    "Hand Brake",
    "Brake System",
    "Steering System",
    "Seat Belt",
    "Doors & Window",
    "Dash Board Light",
    "Front Mirror"
        "/Windshield",
    "Baggage Door "
        "Mirror",
    "Gear Box",
    "Shock Absorber",
    "Front Lights"
        "(high and low beam)",
    "Rear Lights",
    "Turn Indicator "
        "Lights",
    "Break Lights",
    "Hazard",
    "Wiper and Washer",
    "Horn",
    "Side Mirrors",
    "Driver Performance",
  ];
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    double spacebetweenrows = screenwidth * 0.21;
    bool disabled = true;
    return Scaffold(
      // SliverAppBar is declared in Scaffold.body, in slivers of a
      // CustomScrollView.

      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 26,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            pinned: true,
            floating: true,
            snap: true,
            title: Text(
              'Inspection',
              style: appBartexstyle,
              textAlign: TextAlign.justify,
            ),
            backgroundColor: Colors.black,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              background: carImage,
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text('${labels[0]}'),
                        SizedBox(
                          width: spacebetweenrows,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('DEFECTIVE'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text('${labels[1]}'),
                        SizedBox(
                          width: spacebetweenrows,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text('${labels[3]}'),
                        SizedBox(
                          width: spacebetweenrows,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text('${labels[4]}'),
                        SizedBox(
                          width: spacebetweenrows,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text('${labels[5]}'),
                        SizedBox(
                          width: spacebetweenrows,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text('${labels[1]}'),
                        SizedBox(
                          width: spacebetweenrows,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text('${labels[1]}'),
                        SizedBox(
                          width: spacebetweenrows,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text('${labels[1]}'),
                        SizedBox(
                          width: screenwidth * 0.24,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text('${labels[1]}'),
                        SizedBox(
                          width: screenwidth * 0.24,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text('${labels[1]}'),
                        SizedBox(
                          width: screenwidth * 0.24,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text('${labels[1]}'),
                        SizedBox(
                          width: screenwidth * 0.24,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text('${labels[1]}'),
                        SizedBox(
                          width: screenwidth * 0.24,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text('${labels[1]}'),
                        SizedBox(
                          width: screenwidth * 0.24,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text('${labels[1]}'),
                        SizedBox(
                          width: screenwidth * 0.24,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text('${labels[1]}'),
                        SizedBox(
                          width: screenwidth * 0.24,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Working'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 21,
                ),

                ///back and forward buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ///back
                    OutlinedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.resolveWith<OutlinedBorder>(
                          (Set<MaterialState> states) {
                            return CircleBorder();
                          },
                        ),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed))
                              return AppTheme.secondPrimaryColor;
                            return Colors.white;
                          },
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PhotosScreen()));
                      },
                      child: backIcon,
                    ),

                    ///forward
                    OutlinedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.resolveWith<OutlinedBorder>(
                          (Set<MaterialState> states) {
                            return CircleBorder();
                          },
                        ),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed))
                              return AppTheme.secondPrimaryColor;
                            return Colors.white;
                            AppTheme.myPrimaryColor;
                            // Use the component's default.
                          },
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignatureScreen()));
                      },
                      child: forwardIcon,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),

      // bottomNavigationBar: this._getBottomAppBar(screenheight),
    );
  }
}
