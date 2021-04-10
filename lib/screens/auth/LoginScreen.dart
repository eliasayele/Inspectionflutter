import 'package:car_inspection/core/styles.dart';
import 'package:flutter/material.dart';

import 'OTPPage.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 20.0, bottom: 4.0),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage("images/loginimage.jpg"),
              fit: BoxFit.fill,
              repeat: ImageRepeat.repeat,
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 200.0,
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'NANO',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w900,
                          fontSize: 52.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'GARAGE',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w200,
                          fontSize: 42.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Get Started',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 36.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    ///TextField for phone here
                    Container(
                      height: 55,
                      constraints: const BoxConstraints(maxWidth: 500),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 500),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(const Radius.circular(12.0)),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            hintText: '+2519...',
                          ),
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          maxLines: 1,
                        ),
                      ),
                    ),

                    ///Next Button
                    Container(
                      height: 53,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      constraints: const BoxConstraints(maxWidth: 500),
                      child: ElevatedButton(
                        onPressed: () {
                          // if (phoneController.text.length < 2) {
                          //   //  showSnackBar('Please use valid phone number');
                          //   return;
                          // }
                          //calling
                          //loginNow(userProvider);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OTPPage()));
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
                              return Color(0xFF737CC6);
                              AppTheme.myPrimaryColor;
                              // Use the component's default.
                            },
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'LOG IN',
                                style: TextStyle(color: Colors.white),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.blue,
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
