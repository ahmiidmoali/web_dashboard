import 'package:flutter/material.dart';
import '../../const/appcolor.dart';

displayAlertDialog(BuildContext context,
    {required VoidCallback onTap,
    required String confirmTitle,
    required String content}) {
  // set up the button

  Widget cancelButton = TextButton(
    child: const Text(
      "Cancel",
      style: TextStyle(color: AppColor.primary),
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  Widget deleteButton = TextButton(
    onPressed: onTap,
    child: Text(
      confirmTitle,
      style: const TextStyle(color: AppColor.primary),
    ),
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    backgroundColor: AppColor.background,
    content: Text(
      content,
      style: const TextStyle(color: AppColor.primary),
    ),
    actions: [cancelButton, deleteButton],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
