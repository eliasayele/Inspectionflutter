import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

///this page contains url request and other global vars
const String ip = "http://138.68.163.236/inspection/";

const String loginUrl = "${ip}login";
const String authUrl = "${ip}api/inspector/login/authenticate/";
const String newcarUrl = "${ip}api/owner/car/new/";
const String createNewInspectionUrl = "${ip}api/inspection/new/";

///this are svgs that are used
String right = 'assets/right_active.svg';
String left = 'assets/left_active.svg';
Widget forwardIcon = SvgPicture.asset(right);
Widget backIcon = SvgPicture.asset(left);
