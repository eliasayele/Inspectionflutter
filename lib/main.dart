import 'package:car_inspection/screens/auth/LoginScreen.dart';
import 'package:car_inspection/screens/home.dart';
import 'package:flutter/material.dart';

import 'core/styles.dart';

void main() {
  runApp(Starter());
}

class Starter extends StatelessWidget {
  //final ThemeData myAppTheme = buildTheme();
  ThemeData buildTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      textTheme: _buildAppTextTheme(base.textTheme),
      primaryTextTheme: _buildAppTextTheme(base.primaryTextTheme),
      accentTextTheme: _buildAppTextTheme(base.accentTextTheme),
      //accentColor: ,
      primaryColor: AppTheme.myPrimaryColor,
      // scaffoldBackgroundColor:  ,
      // cardColor: ,
      // textSelectionColor: ,0
      // errorColor: ,
      buttonColor: AppTheme.myPrimaryColor,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(),
      ),
    );
  }

  TextTheme _buildAppTextTheme(TextTheme base) {
    return base
        .copyWith(
          headline2: base.headline2!.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontStyle: FontStyle.normal,
          ),
          headline5: base.headline5!.copyWith(
            fontWeight: FontWeight.w900,
            color: Colors.black,
            fontStyle: FontStyle.normal,
          ),
          headline6: base.headline6!.copyWith(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontStyle: FontStyle.normal,
          ),
          caption: base.caption!.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
            color: Colors.black,
            fontStyle: FontStyle.normal,
          ),
        )
        .apply(
          fontFamily: 'Poppins',
          // displayColor: myAccentColor,bodyColor: myAccentColor,
        );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ///this code basically does when user taps in screen body it
        ///will un focus the textField
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Inspection',
        theme: buildTheme(),
        home: LoginScreen(),
        routes: {
          "/home": (_) => new HomePage(),
        },
      ),
    );
  }
}
