import '__tools.dart';
import 'package:flutter/material.dart';

class LevelStatus extends StatefulWidget {
  final Level level;

  const LevelStatus({super.key, required this.level});

  @override
  State<LevelStatus> createState() => _LevelStatusState();
}

class _LevelStatusState extends State<LevelStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: ColorsTool.mainShade,
      ),
      child: TextTool.level[widget.level],
    );
  }
}

class Attribute extends StatefulWidget {
  final String text;
  final Level? level;

  const Attribute({super.key, required this.text, this.level});

  @override
  State<Attribute> createState() => _AttributeState();
}

class _AttributeState extends State<Attribute> {
  @override
  Widget build(BuildContext context) {
    final Level? level = widget.level;
    return Row(
      children: [
        Text(widget.text),
        Spacer(),
        if (level != null) LevelStatus(level: level),
      ],
    );
  }
}
