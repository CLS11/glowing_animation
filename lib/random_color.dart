import 'dart:math' as math;
import 'package:flutter/material.dart';

Color getRandomColor() => Color(
      0xFF000000 + math.Random().nextInt(0x00FFFFFF),
    );
