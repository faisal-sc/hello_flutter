import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hello_flutter/intent_list_item.dart';
import 'constants.dart';

class UserIntentScreen extends StatefulWidget {
  const UserIntentScreen({super.key});

  @override
  State<UserIntentScreen> createState() => _UserIntentScreen();
}

class _UserIntentScreen extends State<UserIntentScreen> {

  int currentSelection = -1;

  // Callback for selected item
  void handleSelection(int selectedIndex) {
    debugPrint("handleSelection = $selectedIndex");
    if (selectedIndex == currentSelection){
      setState(() {
        currentSelection = -1;
      });
    } else {
      setState(() {
        currentSelection = selectedIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(screenTitle),
        ),
        backgroundColor: screenBackgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: marginHeader,
              child: const Text(
                screenHeader,
                style: screenHeaderStyle,
              ),
            ),
            Container(
              margin: marginSubHeader,
              child: const Text(
                screenSubHeader,
                style: screenSubHeaderStyle,
              ),
            ),
            Expanded(
                child: ListView.builder(
              padding: margin16,
              itemCount: userIntents.length,
              itemBuilder: (context, index) {
                return IntentListItem(
                  text: userIntents[index],
                  icon: userIntentIcons[index],
                  isSelected: currentSelection == index,
                  onClick: () => {handleSelection(index)},
                );
              },
            )),
            Container(
                padding: margin16,
                child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      fixedSize: buttonSize,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(cardBorderRadius),
                      ),
                    ),
                    child: const Text(buttonText)))
          ],
        ));
  }
}
