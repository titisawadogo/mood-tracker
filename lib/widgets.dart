import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

LottieBuilder animation(String name, double H, double W) {
  return Lottie.asset(name, height: H, width: W, fit: BoxFit.contain);
}
