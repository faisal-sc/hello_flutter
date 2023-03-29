import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';
import 'constants.dart';

class IntentListItem extends StatelessWidget {
  final String text;
  final String icon;

  const IntentListItem({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(cardBorderRadius),
      ),
      child: InkWell(
          splashColor: cardSplashColor.withAlpha(30),
          onTap: () {
            debugPrint("Card tapped: $text");
          },
          child: Transform.translate(
            offset: cardOffset,
            child: ListTile(
              title: Text(text),
              leading: SvgPicture(AssetBytesLoader(icon)),
              trailing: null,
              // trailing: (text == userIntents.last) ? leftArrow : null,
              contentPadding: cardContentPadding,
            ),
          )),
    );
  }
}
