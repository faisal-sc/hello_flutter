import 'package:flutter/material.dart';
import 'constants.dart';

class TooltipButton extends StatefulWidget {
  final GlobalKey<TooltipState> tooltipKey;
  final String tooltipText;
  final String buttonText;
  final Color textColor;
  final Color backgroundColor;
  final bool showBelow;
  final Function onButtonClick;

  const TooltipButton(
      {Key? key,
      required this.tooltipKey,
      required this.tooltipText,
      required this.buttonText,
      required this.textColor,
      required this.backgroundColor,
      required this.showBelow,
      required this.onButtonClick})
      : super(key: key);

  @override
  State<TooltipButton> createState() => _TooltipButton();
}

class _TooltipButton extends State<TooltipButton> {
  @override
  void initState() {
    super.initState();
    // Display Tooltip on component load
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.tooltipKey.currentState?.ensureTooltipVisible();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
        key: widget.tooltipKey,
        preferBelow: widget.showBelow,
        triggerMode: TooltipTriggerMode.manual,
        decoration: BoxDecoration(
            color: widget.backgroundColor.withOpacity(toolTipOpacity),
            borderRadius: BorderRadius.circular(toolTipCornerRadius)),
        richMessage: TextSpan(
          text: widget.tooltipText,
          style: TextStyle(color: widget.textColor),
          children: [
            const WidgetSpan(
              child: Padding(
                padding: EdgeInsets.only(left: toolTipPadding),
              ),
            ),
            WidgetSpan(
              child: Icon(Icons.close, size: toolTipIconSize, color: widget.textColor),
            )
          ],
        ),
        child: ElevatedButton(
          onPressed: () => {widget.onButtonClick.call()},
          child: Text(widget.buttonText),
        ));
  }
}
