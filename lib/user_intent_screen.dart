import 'package:flutter/material.dart';
import 'package:hello_flutter/intent_list_item.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';
import 'amplitude_util.dart';
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
    if (selectedIndex == currentSelection) {
      setState(() {
        currentSelection = -1;
      });
    } else {
      setState(() {
        currentSelection = selectedIndex;
      });
    }
  }

  // Confirms selection & navigates back
  void confirmSelection() {
    // Show SnackBar
    final snackBar = SnackBar(
      content: snackBarContent,
      action: SnackBarAction(
        label: snackActionOk,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appBarBackgroundColor,
          iconTheme: appBarIconColor,
          title: const SizedBox(
            width: appBarLogoWidth,
            child: SvgPicture(AssetBytesLoader(scLogo)),
          ),
          centerTitle: true,
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
                margin: marginFooter,
                child: ElevatedButton(
                    onPressed: () => {
                          // Track events
                          AmplitudeUtil.trackEvent(
                              CLICKED_CONTINUE_BUTTON, INTENT_LIST_SCREEN),
                          if (currentSelection >= 0)
                            {
                              AmplitudeUtil.setUserProperty(SIGNUP_INTENT,
                                  signupIntents[currentSelection])
                            },
                          // Show confirmation
                          confirmSelection()
                        },
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
