import 'package:amplitude_flutter/amplitude.dart';
import 'package:amplitude_flutter/identify.dart';
import 'package:flutter/foundation.dart';
import 'constants.dart';

class AmplitudeUtil {
  static init() {
    debugPrint("AmplitudeUtil init()");
    Amplitude.getInstance().init(AMPLITUDE_API_KEY);
    Amplitude.getInstance().setEventUploadThreshold(1000);
  }

  static Future<void> trackEvent(String action, String screen) async {
    debugPrint("AmplitudeUtil trackEvent(): action = $action, screen = $screen");
    Amplitude.getInstance()
        .logEvent(action, eventProperties: {"screen_name": screen});
  }

  static Future<void> setUserProperty(String property, String value) async {
    debugPrint("AmplitudeUtil setUserProperty(): property = $property, value = $value");
    final Identify identifyOnce = Identify();
    identifyOnce.setOnce(property, value);
    Amplitude.getInstance().identify(identifyOnce);
  }
}
