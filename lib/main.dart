import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flurates/internal/appplication.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;

  runApp(Application());
}