import 'package:flutter/material.dart';

const actionBarTitle = "SC-Flutter Demo";
const screenTitle = "User Intents";
const screenHeader = "What will you use SafetyCulture for?";
const screenSubHeader = "We’ll use this to help get you started.";

const margin16 = EdgeInsets.all(16.0);
const marginHeader = EdgeInsets.all(20);
const marginSubHeader = EdgeInsets.only(left: 20, bottom: 8);
const screenBackgroundColor = Color(0xFFE9EEF6);
const screenHeaderStyle = TextStyle(fontSize: 28, fontWeight: FontWeight.w700);
const screenSubHeaderStyle =
TextStyle(fontSize: 14, fontWeight: FontWeight.w400);

const userIntents = [
  "Run safety inspections with my team",
  "Run maintenance checks on equipment",
  "Conduct audits & stay compliant",
  "Log issues & manage incidents in the workplace",
  "Provide training and courses to my team",
  "Other"
];

const userIntentIcons = [
  "assets/ic_inspections.svg.vec",
  "assets/ic_maintenance.svg.vec",
  "assets/ic_audits.svg.vec",
  "assets/ic_issues.svg.vec",
  "assets/ic_training.svg.vec",
  "assets/ic_other.svg.vec",
];

const cardBorderRadius = 12.0;
const cardSplashColor = Colors.blue;
const cardOffset = Offset(-4, 0);
const cardContentPadding = EdgeInsets.only(left: 0, right: 8);
const leftArrow = Icon(Icons.arrow_forward_ios, size: 14);

const buttonText = "Continue";
const buttonSize = Size(0, 40);
const buttonColor = Color(0xFF675DF4);