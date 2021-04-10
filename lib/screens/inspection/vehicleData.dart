import 'package:car_inspection/core/styles.dart';
import 'package:flutter/material.dart';

import 'PhotosScreen.dart';

class VehicleData extends StatefulWidget {
  @override
  _VehicleDataState createState() => _VehicleDataState();
}

class _VehicleDataState extends State<VehicleData> {
  static const TextStyle appBartexstyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 24.0,
    color: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.black,
        title: Text(
          'Input Vehicle Data',
          style: appBartexstyle,
        ),
      ),
      body: BuildBody(),
    );
  }
}

class BuildBody extends StatefulWidget {
  @override
  _BuildBodyState createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  ///text style
  static const TextStyle texstyle = TextStyle(
    color: Colors.black,
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w300,
    fontSize: 21.0,
  );
  static const TextStyle buttonTextStyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 18.0,
    color: AppTheme.myPrimaryColor,
  );

  @override
  Widget build(BuildContext context) {
    ///for check box
    bool checkedValue = false;

    ///getting scren size for later use of elements
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 10, bottom: 8.0),
                child: Text(
                  'Vehicle Detail',
                  style: texstyle,
                ),
              ),

              ///plate no and veh color
              Row(
                children: [
                  Container(
                    width: screenwidth * 0.57,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "PLATE NO",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    width: screenwidth * 0.30,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "VEH COLOR",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),

              ///make and model year
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: screenwidth * 0.57,
                    child: TextField(
                      style: TextStyle(fontSize: 14),
                      cursorColor: Colors.orangeAccent,
                      decoration: InputDecoration(
                        hintText: "MAKE",
                        hintStyle:
                            TextStyle(color: Colors.black26, fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),

                  ///model /yar
                  Container(
                    width: screenwidth * 0.30,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "YEAR",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              ///vin Number
              Container(
                width: screenwidth * 0.89,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "VIN NUMBER",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                ),
              ),

              ///owner text
              Padding(
                padding: EdgeInsets.only(left: 8.0, top: 10, bottom: 8.0),
                child: Text(
                  'Owner Details',
                  style: texstyle,
                ),
              ),
              SizedBox(
                height: 7,
              ),

              ///Name field
              Container(
                width: screenwidth * 0.35,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "NAME",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              ///MIddle Name and Last name field
              Row(
                children: [
                  Container(
                    width: screenwidth * 0.35,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "MIDDLE NAME",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    width: screenwidth * 0.53,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "LAST NAME",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              ///phone for owner
              Container(
                width: screenwidth,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "PHONE",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              ///email for owner
              Container(
                width: screenwidth,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "EMAIL",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                ),
              ),

              ///check box tile is here
              CheckboxListTile(
                title: Text("Driver data is the same as owner data"),
                value: checkedValue,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue = newValue!;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),

              ///owner text
              Padding(
                padding: EdgeInsets.only(left: 8.0, top: 10, bottom: 8.0),
                child: Text(
                  'Driver Details',
                  style: texstyle,
                ),
              ),
              SizedBox(
                height: 7,
              ),

              ///Name field for driver
              Container(
                width: screenwidth * 0.35,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "NAME",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              ///MIddle Name and Last name field for driver
              Row(
                children: [
                  Container(
                    width: screenwidth * 0.35,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "MIDDLE NAME",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    width: screenwidth * 0.53,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "LAST NAME",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              ///phone for driver
              Container(
                width: screenwidth,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "PHONE",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              ///email for driver
              Container(
                width: screenwidth,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "EMAIL",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                width: screenwidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(const Radius.circular(16.0)),
                ),
                height: 60.2,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                constraints: const BoxConstraints(maxWidth: 600),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PhotosScreen()));
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
                            color: Colors.black,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Icon(Icons.next_plan_rounded),
                        ),
                        Text(
                          'NEXT',
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
      ),
    );
  }
}
