import '__tools.dart';
import '__widgets.dart';
import 'package:flutter/material.dart';

class EventCard extends StatefulWidget {
  final String event;
  final String role;
  final List<String> experiences;

  const EventCard({
    super.key,
    required this.event,
    required this.role,
    required this.experiences,
  });

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {
    final List<Marker> markers = [];
    for (String experience in widget.experiences) {
      markers.add(Marker.circle(child: Text(experience)));
    }
    return Container(
      padding: EdgeInsetsGeometry.all(36),
      width: 527,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        //color: ColorsTool.main,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Marker.event(child: Text(widget.event, style: StyleTool.header)),
          dividerMainShade,
          Row(
            children: [
              SizedBox(width: 18),
              Text(widget.role, style: StyleTool.note),
            ],
          ),
          SizedBox(height: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 9,
            children: markers,
          ),
        ],
      ),
    );
  }
}
