import 'package:another_flushbar/flushbar.dart';
import 'package:bank_sha/Shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

void showCostomSnackBar(BuildContext context, String message) {
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: redColor,
    duration: Duration(seconds: 2),
  ).show(context);
}

String formatCurrency(
  num number, {
  String symbol = 'Rp ',
}) {
  return NumberFormat.currency(locale: 'id', symbol: symbol, decimalDigits: 0)
      .format(number);
}

Future<XFile?> selectImage() async {
  XFile? selectImage = await ImagePicker().pickImage(
    source: ImageSource.gallery,
  );
  return selectImage;
}
