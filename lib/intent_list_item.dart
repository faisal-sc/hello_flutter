import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';
import 'constants.dart';

class IntentListItem extends StatelessWidget {
  final TextSpan text;
  final String icon;
  final bool isSelected;
  final Function onClick;

  const IntentListItem({
    Key? key,
    required this.text,
    required this.icon,
    required this.isSelected,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: cardHeight,
      child: Card(
        elevation: cardElevation,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          side: isSelected ? cardSelectedBorder : cardDefaultBorder,
          borderRadius: BorderRadius.circular(cardBorderRadius),
        ),
        child: InkWell(
            splashColor: cardSplashColor.withAlpha(cardSplashAlpha),
            onTap: () => {onClick()},
            child: Transform.translate(
              offset: cardOffset,
              child: ListTile(
                title: Text.rich(text),
                leading: SvgPicture(
                    AssetBytesLoader(isSelected ? selectedIcon : icon)),
                trailing: null,
                // trailing: (text == userIntents.last) ? leftArrow : null,
                contentPadding: cardContentPadding,
              ),
            )),
      ),
    );
  }
}
