import 'package:flutter/material.dart';

sizeFigma(BuildContext context, var val) {
  var size = MediaQuery.of(context).size;
  var widthRef = size.width / 360;
  return val * widthRef;
}
