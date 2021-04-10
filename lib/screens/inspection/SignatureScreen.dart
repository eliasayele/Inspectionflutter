import 'dart:io';
import 'dart:typed_data';

import 'package:car_inspection/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

import 'ResultShow.dart';

class SignatureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var imagesProvider = Provider.of<Images>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.black,
        title: Text(
          'OWNER SIGNATURE',
          style: AppTheme.appBartexstyle,
        ),
      ),
      body: BuildSignatureBody(),
    );
  }
}

class BuildSignatureBody extends StatefulWidget {
  @override
  _BuildSignatureBodyState createState() => _BuildSignatureBodyState();
}

class _BuildSignatureBodyState extends State<BuildSignatureBody> {
  static const TextStyle confirmTextStyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 10.0,
    color: Colors.grey,
  );

  ///signature board controller
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
    exportBackgroundColor: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Container(
                // clipBehavior: Clip.antiAlias,
                height: screenheight * 0.7,
                width: MediaQuery.of(context).size.width,
                // decoration: BoxDecoration(
                //   border: Border.all(
                //     color: Color(0xffBDBDBD),
                //   ),
                //   //borderRadius: BorderRadius.circular(10.0),
                // ),
                child: Column(
                  children: [
                    ///SIGNATURE CANVAS
                    // imagesProvider != null
                    //     ? Signature(
                    //   controller: _controller,
                    //   height: 250,
                    //   backgroundColor: Colors.white,
                    // )
                    Signature(
                      controller: _controller,
                      height: screenheight * 0.60,
                      backgroundColor: Colors.white,
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Container(
                      //  decoration: const BoxDecoration(color: Colors.black),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          //SHOW EXPORTED IMAGE IN NEW ROUTE
                          IconButton(
                            iconSize: 35.0,
                            icon: const Icon(Icons.check),
                            color: Colors.black,
                            onPressed: () async {
                              if (_controller.isNotEmpty) {
                                Uint8List data =
                                    (await _controller.toPngBytes())!;
                                File signature = File.fromRawPath(data);

                                // imagesProvider
                                //     .setSignatureImage(signature.readAsBytesSync());
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return Scaffold(
                                        backgroundColor: Colors.black,
                                        appBar: AppBar(
                                          backgroundColor: Colors.black,
                                          title: Text(
                                            'Check your Signature',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        body: Center(
                                            child: Container(
                                                color: Colors.grey[300],
                                                child: Image.memory(data))),
                                      );
                                    },
                                  ),
                                );
                              }
                            },
                          ),
                          //CLEAR CANVAS
                          IconButton(
                            iconSize: 35.0,
                            icon: const Icon(Icons.refresh),
                            color: Colors.black,
                            onPressed: () {
                              setState(() => _controller.clear());
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                //: screenheight * 0.20,

                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppTheme.myPrimaryColor,
                        borderRadius:
                            BorderRadius.all(const Radius.circular(16.0)),
                      ),
                      height: 60.2,
                      width: screenwidth * 0.70,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
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
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return AppTheme.secondPrimaryColor;
                              return AppTheme.myPrimaryColor;
                            },
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Submit',
                            style: AppTheme.yellowButtonsTextStyle,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'I agree the vehicle is inspected as per the standard',
                      style: confirmTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
