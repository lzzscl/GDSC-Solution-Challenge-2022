import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Shadows {
  static const BoxShadow primaryShadow = BoxShadow(
    color: Colors.grey,
    offset: Offset(0, 8),
    blurRadius: 15,
  );
  static const BoxShadow noShadow = BoxShadow(
    color: Color.fromARGB(38, 27, 27, 29),
    offset: Offset(0, 0),
    blurRadius: 0,
  );
}
