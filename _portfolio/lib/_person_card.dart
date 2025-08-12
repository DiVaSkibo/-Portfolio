import 'package:_portfolio/__tools.dart';
import 'package:_portfolio/__widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonCard extends StatefulWidget {
  final String title;
  final String body;
  final String image;
  final String? info;
  final Map<String, String>? links;

  const PersonCard({
    super.key,
    required this.title,
    required this.body,
    required this.image,
    this.info,
    this.links,
  });

  @override
  State<PersonCard> createState() => _PersonCardState();
}

class _PersonCardState extends State<PersonCard> {
  @override
  Widget build(BuildContext context) {
    final String? info = widget.info;
    final links = widget.links;
    final List<Map> uris = [];
    if (links != null) {
      for (final String key in links.keys) {
        uris.add({'text': key, 'link': Uri.parse(links[key]!)});
      }
    }
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsetsGeometry.all(36),
        width: 1000,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: ColorsTool.main,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 36,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              spacing: 18,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(9),
                  child: Image.asset(
                    widget.image,
                    width: MediaQuery.of(context).size.width / 6,
                  ),
                ),
                if (info != null) Text(info, textAlign: TextAlign.left),
                if (uris.isNotEmpty)
                  Column(
                    children: List.generate(
                      uris.length,
                      (index) => InkWell(
                        child: Text(uris[index]['text'], style: StyleTool.note),
                        onTap: () => launchUrl(uris[index]['link']),
                      ),
                    ),
                  ),
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: StyleTool.header,
                    textAlign: TextAlign.left,
                  ),
                  dividerMain,
                  Text(widget.body),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
