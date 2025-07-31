import 'package:flutter/material.dart';

enum ToDirections { start, end }

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
  static const Color notation = Color(0xFF7A67A1);

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

final class StyleTool {
  static const TextStyle basic = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 18,
  );
  static const TextStyle header = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 36,
  );
  static const TextStyle description = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 15,
  );
  static const TextStyle note = TextStyle(
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.italic,
    color: ColorsTool.notation,
  );
  static const TextStyle buttonText = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 18,
  );

  static TextStyle statusText(Level level) => TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.italic,
    color: ColorsTool.level[level],
  );
}

final class TextTool {
  static final Map<Level, Text> level = {
    Level.beginner: Text(
      'Beginner',
      style: StyleTool.statusText(Level.beginner),
    ),
    Level.elementary: Text(
      'Elementary',
      style: StyleTool.statusText(Level.elementary),
    ),
    Level.intermediate: Text(
      'Intermediate',
      style: StyleTool.statusText(Level.intermediate),
    ),
    Level.upperIntermediate: Text(
      'Upper-Intermediate',
      style: StyleTool.statusText(Level.upperIntermediate),
    ),
    Level.advanced: Text(
      'Advanced',
      style: StyleTool.statusText(Level.advanced),
    ),
    Level.expert: Text('Expert', style: StyleTool.statusText(Level.expert)),
    Level.guru: Text('Guru', style: StyleTool.statusText(Level.guru)),
    Level.fluent: Text('Fluent', style: StyleTool.statusText(Level.fluent)),
  };
}
