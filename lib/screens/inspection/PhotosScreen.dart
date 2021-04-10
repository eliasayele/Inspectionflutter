import 'dart:io';

import 'package:car_inspection/core/styles.dart';
import 'package:car_inspection/screens/inspection/vehicleData.dart';
import 'package:flutter/material.dart';
// import 'package:inspection/Models/Images.dart';
// import 'package:inspection/screens/TakePicture.dart';
// import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'InspectionPoints.dart';

final double scale = 5.4;

//this page is responsible for showing four side images and picker method
class PhotosScreen extends StatefulWidget {
  @override
  _PhotosScreenState createState() => _PhotosScreenState();
}

class _PhotosScreenState extends State<PhotosScreen> {
  static const TextStyle appBartexstyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 24.0,
    color: Colors.white,
  );

  ///this fuc is responsible showing images when long press
  Widget? _onLongPress(url) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return Scaffold(
            backgroundColor: Colors.black,
            body: InteractiveViewer(
              child: Center(
                child: url != null
                    ? Image.file(
                        File(url),
                      )
                    : Text('Nothing to show '),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // var imagesProvider = Provider.of<Images>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.black,
        title: Text(
          'VEHICLE IMAGE',
          style: appBartexstyle,
        ),
      ),
      body: BuildPhotosScreenBody(),
    );
  }
}

class BuildPhotosScreenBody extends StatefulWidget {
  @override
  _BuildPhotosScreenBodyState createState() => _BuildPhotosScreenBodyState();
}

class _BuildPhotosScreenBodyState extends State<BuildPhotosScreenBody> {
  static const TextStyle carimagetext = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
    color: AppTheme.myPrimaryColor,
  );

  static String right = 'assets/right_active.svg';
  static String left = 'assets/left_active.svg';
  Widget rightIcon = SvgPicture.asset(right);
  Widget leftIcon = SvgPicture.asset(left);

  @override
  Widget build(BuildContext context) {
    ///getting scren size for later use of elements
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(left: 13.0, right: 15.0, bottom: 12.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),

            ///front image picker and display part
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
              child: GestureDetector(
                onLongPress: () {
                  // if (imagesProvider.rightImage != null) {
                  //   _onLongPress(imagesProvider.rightImage!.path);
                  // }
                },
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => TakePicture("right")));
                },
                child: Container(
                  width: screenwidth,
                  height: screenheight / scale,
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
                    // border: Border.all(
                    //   color: Colors.black26,
                    // ),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(const Radius.circular(12.0)),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Icon(Icons.camera),
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: screenwidth * 0.30,
                        right: screenwidth * 0.30,
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 25.0, // soften the shadow
                                spreadRadius: 5.0, //extend the shadow
                                offset: Offset(
                                  10.0, // Move to right 10  horizontally
                                  10.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ],
                            color: Colors.white.withOpacity(.8),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: Center(
                              child: Text(
                            "FRONT IMAGE",
                            style: carimagetext,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///right image picker and display part
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
              child: GestureDetector(
                onLongPress: () {
                  // if (imagesProvider.rightImage != null) {
                  //   _onLongPress(imagesProvider.rightImage!.path);
                  // }
                },
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => TakePicture("right")));
                },
                child: Container(
                  width: screenwidth,
                  height: screenheight / scale,
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
                    // border: Border.all(
                    //   color: Colors.black26,
                    // ),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(const Radius.circular(12.0)),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Icon(Icons.camera),
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: screenwidth * 0.30,
                        right: screenwidth * 0.30,
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 25.0, // soften the shadow
                                spreadRadius: 5.0, //extend the shadow
                                offset: Offset(
                                  10.0, // Move to right 10  horizontally
                                  10.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ],
                            color: Colors.white.withOpacity(.8),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: Center(
                              child: Text(
                            "LEFT IMAGE",
                            style: carimagetext,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///rear image picker and display part
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
              child: GestureDetector(
                onLongPress: () {
                  // if (imagesProvider.rightImage != null) {
                  //   _onLongPress(imagesProvider.rightImage!.path);
                  // }
                },
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => TakePicture("right")));
                },
                child: Container(
                  width: screenwidth,
                  height: screenheight / scale,
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
                    // border: Border.all(
                    //   color: Colors.black26,
                    // ),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(const Radius.circular(12.0)),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Icon(Icons.camera),
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: screenwidth * 0.30,
                        right: screenwidth * 0.30,
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 25.0, // soften the shadow
                                spreadRadius: 5.0, //extend the shadow
                                offset: Offset(
                                  10.0, // Move to right 10  horizontally
                                  10.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ],
                            color: Colors.white.withOpacity(.8),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: Center(
                              child: Text(
                            "RIGHT IMAGE",
                            style: carimagetext,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///left image picker and display part
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
              child: GestureDetector(
                onLongPress: () {
                  // if (imagesProvider.rightImage != null) {
                  //   _onLongPress(imagesProvider.rightImage!.path);
                  // }
                },
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => TakePicture("right")));
                },
                child: Container(
                  width: screenwidth,
                  height: screenheight / scale,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 25.0, // soften the shadow
                        spreadRadius: 5.0, //extend the shadow
                        offset: Offset(
                          10.0, // Move to right 10  horizontally
                          10.0, // Move to bottom 10 Vertically
                        ),
                      ),
                    ],
                    // border: Border.all(
                    //   color: Colors.black26,
                    // ),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(const Radius.circular(12.0)),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Icon(Icons.camera),
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: screenwidth * 0.30,
                        right: screenwidth * 0.30,
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 25.0, // soften the shadow
                                spreadRadius: 5.0, //extend the shadow
                                offset: Offset(
                                  10.0, // Move to right 10  horizontally
                                  10.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ],
                            color: Colors.white.withOpacity(.8),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: Center(
                              child: Text(
                            "BACK IMAGE",
                            style: carimagetext,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///back and forward buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ///back
                OutlinedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                      (Set<MaterialState> states) {
                        return CircleBorder();
                      },
                    ),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return AppTheme.secondPrimaryColor;
                        return Colors.white;
                      },
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VehicleData()));
                  },
                  child: leftIcon,
                ),

                ///forward
                OutlinedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                      (Set<MaterialState> states) {
                        return CircleBorder();
                      },
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InspectionScreen()));
                  },
                  child: rightIcon,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
