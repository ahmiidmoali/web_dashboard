import 'dart:io';

import 'package:flutter/material.dart';

import 'display_alert_dialog.dart';

Future<bool> alertExitApp(BuildContext context) {
  displayAlertDialog(
    confirmTitle: "Alert",
    context,
    content: "Do you want to exit from the app?",
    onTap: () {
      exit(0);
    },
  );
  return Future.value(true);
}
