import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle style28bold(BuildContext context, Color? color) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 28),
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle style24bold(BuildContext context, Color? color) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 24),
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle style20bold(BuildContext context, Color? color) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 20),
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle style18bold(BuildContext context, Color? color) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 18),
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle style16bold(BuildContext context, Color? color) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle style16medium(BuildContext context, Color? color) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontWeight.w500,
      color: color,
    );
  }

  static TextStyle style14bold(BuildContext context, Color? color) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle style14medium(BuildContext context, Color? color,
      {double? height}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontWeight.w500,
      color: color,
      height: height,
    );
  }

  static TextStyle style12medium(BuildContext context, Color? color) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontWeight.w500,
      color: color,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontsize}) {
  double scaleFactor = getScaleFactor(fontsize, context);
  double responsiveFontSize = fontsize * scaleFactor;

  double lowerLimit = fontsize * 0.5;
  double upperLimit = fontsize * 1.5;

  responsiveFontSize = responsiveFontSize.clamp(lowerLimit, upperLimit);

  return responsiveFontSize;
}

double getScaleFactor(double fontsize, BuildContext context) {
  var width = MediaQuery.sizeOf(context).width;

  if (width < 600) {
    return width / 390;
  } else {
    return width / 800;
  }
}
