import 'package:flutter/material.dart';
import 'tooltip_button.dart';
import 'user_intent_screen.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: actionBarTitle,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: const SCHomePage(title: actionBarTitle),
    );
  }
}

class SCHomePage extends StatefulWidget {
  const SCHomePage({super.key, required this.title});

  final String title;

  @override
  State<SCHomePage> createState() => _SCHomePageState();
}

class _SCHomePageState extends State<SCHomePage> {

  final GlobalKey<TooltipState> tooltipKey = GlobalKey<TooltipState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: screenBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TooltipButton(
              tooltipKey: tooltipKey,
              tooltipText: toolTipText,
              buttonText: toolTipButtonText,
              textColor: toolTipTextColor,
              backgroundColor: toolTipColor,
              showBelow: false,
              onButtonClick: () => {
                // Action on Button click
                debugPrint("Show user intent in new screen:"),
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UserIntentScreen()))
              },
            )
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: () => {
          *//* Add action *//*
        },
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.*/
    );
  }
}
