import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void setTargetPlatformForDesktop({TargetPlatform? platform}) {
  TargetPlatform? targetPlatform;
  if (platform != null) {
    targetPlatform = platform;
  } else {
    if (Platform.isMacOS) {
      targetPlatform = TargetPlatform.iOS;
    } else if (Platform.isLinux || Platform.isWindows) {
      targetPlatform = TargetPlatform.android;
    }
  }
  debugDefaultTargetPlatformOverride = targetPlatform;
}
