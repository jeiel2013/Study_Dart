import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeuSliderAdaptativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return Slider(
        onChanged: (valor) {},
        value: 10,
        min: 0,
        max: 20,
      );
    } else {
      return CupertinoSlider(
        onChanged: (valor) {},
        value: 10,
        min: 0,
        max: 20,
      );
    }
  }
}
