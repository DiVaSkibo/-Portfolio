import 'package:_portfolio/__tools.dart';
import 'package:flutter/material.dart';

const Divider dividerMain = Divider(thickness: 2, color: ColorsTool.mainShade);
const Divider dividerMainShade = Divider(thickness: 2, color: ColorsTool.main);

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
        if (level != null) Spacer(),
        if (level != null) LevelStatus(level: level),
      ],
    );
  }
}

class Marker extends StatefulWidget {
  final IconData marker;
  final double size;
  final Color color;
  final double offsetHorizontal;
  final Widget child;

  const Marker({
    super.key,
    required this.marker,
    required this.size,
    required this.color,
    required this.offsetHorizontal,
    required this.child,
  });

  const Marker.circle({super.key, required this.child})
    : marker = Icons.circle,
      size = 8,
      color = ColorsTool.main,
      offsetHorizontal = 1;
  const Marker.event({super.key, required this.child})
    : marker = Icons.bookmark,
      size = 36,
      color = ColorsTool.accent,
      offsetHorizontal = 0;

  @override
  State<Marker> createState() => MarkerState();
}

class MarkerState extends State<Marker> {
  @override
  Widget build(BuildContext context) {
    final offsetHorizontal = widget.offsetHorizontal;
    return Row(
      spacing: 18,
      children: [
        if (offsetHorizontal != 0) SizedBox(width: 2),
        Icon(widget.marker, size: widget.size, color: widget.color),
        widget.child,
      ],
    );
  }
}

class ScrollListView extends StatefulWidget {
  final Axis scrollAxis;
  final List<Widget> children;
  final double scrollDistance;
  final Duration scrollDuration;
  final Curve scrollCurve;

  const ScrollListView({
    super.key,
    required this.scrollAxis,
    required this.children,
    required this.scrollDistance,
    required this.scrollDuration,
    required this.scrollCurve,
  });
  const ScrollListView.shots({super.key, required this.children})
    : scrollAxis = Axis.horizontal,
      scrollDistance = 381,
      scrollDuration = Durations.medium3,
      scrollCurve = Curves.easeOut;

  @override
  State<ScrollListView> createState() => _ScrollListViewState();
}

class _ScrollListViewState extends State<ScrollListView> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final children = widget.children;
    final scrollDuration = widget.scrollDuration;
    final scrollCurve = widget.scrollCurve;
    Future<void> scroll(ToDirections direction) => _scrollController.animateTo(
      _scrollController.position.pixels +
          widget.scrollDistance * (direction == ToDirections.end ? 1 : -1),
      duration: scrollDuration,
      curve: scrollCurve,
    );
    final childrenScrollListView = [
      if (children.length >= 3)
        IconButton(
          onPressed: () {
            if (_scrollController.position.pixels >=
                _scrollController.position.minScrollExtent) {
              scroll(ToDirections.start);
            }
          },
          icon: Icon(
            widget.scrollAxis == Axis.horizontal
                ? Icons.arrow_left
                : Icons.arrow_drop_up,
          ),
        ),
      Expanded(
        child: SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            controller: _scrollController,
            itemCount: children.length,
            itemBuilder: (context, index) {
              return children[index];
            },
          ),
        ),
      ),
      if (children.length >= 3)
        IconButton(
          onPressed: () {
            if (_scrollController.position.pixels <=
                _scrollController.position.maxScrollExtent) {
              scroll(ToDirections.end);
            }
          },
          icon: Icon(
            widget.scrollAxis == Axis.horizontal
                ? Icons.arrow_right
                : Icons.arrow_drop_down,
          ),
        ),
    ];
    return widget.scrollAxis == Axis.horizontal
        ? Row(children: childrenScrollListView)
        : Column(children: childrenScrollListView);
  }
}
