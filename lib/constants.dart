import 'package:flutter/material.dart';

const actionBarTitle = "SC-Flutter Demo";
const screenTitle = "User Intents";
const screenHeader = "What is your main purpose for using SafetyCulture?";
const screenSubHeader = "We’ll use this to help get you started.";
const toolTipText = "Click here to display user intents.";
const toolTipButtonText = "Select Signup Intent";

const userIntents = [
  TextSpan(
    text: "Run", // default text style
    children: <TextSpan>[
      TextSpan(
          text: " safety inspections",
          style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: " with my team"),
    ],
  ),
  TextSpan(
    text: "Run", // default text style
    children: <TextSpan>[
      TextSpan(
          text: " maintenance checks",
          style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: " on"),
      TextSpan(
          text: " equipment", style: TextStyle(fontWeight: FontWeight.bold)),
    ],
  ),
  TextSpan(
    text: "Conduct", // default text style
    children: <TextSpan>[
      TextSpan(text: " audits", style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: " and stay"),
      TextSpan(
          text: " compliant", style: TextStyle(fontWeight: FontWeight.bold)),
    ],
  ),
  TextSpan(
    children: <TextSpan>[
      TextSpan(
          text: "Log issues", style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: " and"),
      TextSpan(
          text: " manage incidents",
          style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: " in the workplace"),
    ],
  ),
  TextSpan(
    text: "Provide", // default text style
    children: <TextSpan>[
      TextSpan(
          text: " training", style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: " and"),
      TextSpan(text: " courses", style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: " to my team"),
    ],
  ),
  TextSpan(
    text: "Other", // default text style
  ),
];

const selectedIcon = "assets/ic_selected.svg.vec";

const userIntentIcons = [
  "assets/ic_inspections.svg.vec",
  "assets/ic_maintenance.svg.vec",
  "assets/ic_audits.svg.vec",
  "assets/ic_issues.svg.vec",
  "assets/ic_training.svg.vec",
  "assets/ic_other.svg.vec",
];

/* Screen */
const margin16 = EdgeInsets.all(16.0);
const marginHeader = EdgeInsets.all(20);
const marginSubHeader = EdgeInsets.only(left: 20, bottom: 8);
const marginFooter = EdgeInsets.only(bottom: 16.0);
const screenBackgroundColor = Color(0xFFE9EEF6);
const screenHeaderStyle = TextStyle(fontSize: 28, fontWeight: FontWeight.w700);
const screenSubHeaderStyle =
    TextStyle(fontSize: 14, fontWeight: FontWeight.w400);

/* ToolTip */
const toolTipColor = Color(0xFF1F2533);
const toolTipTextColor = Colors.white;
const toolTipOpacity = 0.7;
const toolTipCornerRadius = 12.0;
const toolTipPadding = 8.0;
const toolTipIconSize = 16.0;

/* Button */
const buttonText = "Continue";
const buttonSize = Size(0, 40);
const buttonColor = Color(0xFF675DF4);

/* Card */
const cardHeight = 64.0;
const cardElevation = 0.0;
const cardBorderRadius = 12.0;
const cardSplashColor = Color(0xFF675DF4);
const cardSplashAlpha = 30;
const cardOffset = Offset(-4, 0);
const cardContentPadding = EdgeInsets.only(left: 0, right: 8);
const cardDefaultBorder = BorderSide(color: Colors.transparent, width: 0.0);
const cardSelectedBorder = BorderSide(color: cardSplashColor, width: 1.0);
const leftArrow = Icon(Icons.arrow_forward_ios, size: 14);

/* Amplitude */
const AMPLITUDE_API_KEY = "207f113d3cc32746120fb6a682bc6ee6";
const SIGNUP_SCREEN = "signup_screen";
const INTENT_LIST_SCREEN = "intent_list_screen";
const SIGNUP_INTENT = "signup_intent";
const CLICKED_SIGNUP_INTENT_BUTTON = "clicked_signup_intent_button";
const CLICKED_CONTINUE_BUTTON = "clicked_continue_button";
const signupIntents = [
  "inspections",
  "maintenance",
  "audits",
  "issues",
  "training",
  "other"
];
