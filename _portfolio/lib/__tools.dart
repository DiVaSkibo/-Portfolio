import 'package:flutter/material.dart';

enum Level {
  beginner,
  elementary,
  intermediate,
  upperIntermediate,
  advanced,
  expert,
  fluent,
  guru,
}

final class ColorsTool {
  static const Color main = Color(0xFF35225C);
  static const Color mainShade = Color(0xFF241345);
  static const Color accent = Color(0xFF00FFAA);
  static const Color accentShade = Color(0xFF092E22);

  static const Map<Level, Color> level = {
    Level.beginner: Color(0xFFFFA64D),
    Level.elementary: Color(0xFFE1FF4C),
    Level.intermediate: Color(0xFFE1FF4C),
    Level.upperIntermediate: Color(0xFF4CFF6A),
    Level.advanced: Color(0xFF4CFFFF),
    Level.expert: Color(0xFF4CFF6A),
    Level.guru: Color(0xFFFF4DA6),
    Level.fluent: Color(0xFFFF4DA6),
  };
}

TextStyle statusTextStyle(Level level) => TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.italic,
  color: ColorsTool.level[level],
);

final class TextTool {
  static final Map<Level, Text> level = {
    Level.beginner: Text('Beginner', style: statusTextStyle(Level.beginner)),
    Level.elementary: Text(
      'Elementary',
      style: statusTextStyle(Level.elementary),
    ),
    Level.intermediate: Text(
      'Intermediate',
      style: statusTextStyle(Level.intermediate),
    ),
    Level.upperIntermediate: Text(
      'Upper-Intermediate',
      style: statusTextStyle(Level.upperIntermediate),
    ),
    Level.advanced: Text('Advanced', style: statusTextStyle(Level.advanced)),
    Level.expert: Text('Expert', style: statusTextStyle(Level.expert)),
    Level.guru: Text('Guru', style: statusTextStyle(Level.guru)),
    Level.fluent: Text('Fluent', style: statusTextStyle(Level.fluent)),
  };
}
