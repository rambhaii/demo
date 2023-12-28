
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class DialogHelper {
  static void hideLoading() {}

  static Future<void> showFlutterToast({required String strMsg}) async {
    await Fluttertoast.showToast(msg: strMsg);
  }

  shoppopDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(
          "Alert",
        ),
        content: Text(
          "internetnotavailable",
            style:TextStyle(fontSize: 10),
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: Text(
              "ok",
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
