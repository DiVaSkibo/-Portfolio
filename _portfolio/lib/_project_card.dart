import 'package:_portfolio/__tools.dart';
import 'package:_portfolio/__widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final String title;
  final String body;
  final String image;
  final List<String>? screenshots;
  final Map<String, String>? links;

  const ProjectCard({
    super.key,
    required this.title,
    required this.body,
    required this.image,
    this.screenshots,
    this.links,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    final List<String>? screenshotsAssets = widget.screenshots;
    final List<ClipRRect> screenshots = screenshotsAssets == null
        ? []
        : List.generate(
            screenshotsAssets.length,
            (index) => ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: Image.asset(screenshotsAssets[index], width: 181),
            ),
          );
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          spacing: 18,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 36,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(9),
                  child: Image.asset(widget.image, height: 200),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.title, style: StyleTool.header),
                      if (screenshots.isNotEmpty)
                        ScrollListView.shots(children: screenshots),
                      //if (links != null) Text(links, style: StyleTool.note),
                      if (uris.isNotEmpty)
                        Row(
                          spacing: 30,
                          children: List.generate(
                            uris.length,
                            (index) => InkWell(
                              child: Text(
                                uris[index]['text'],
                                style: StyleTool.note,
                              ),
                              onTap: () => launchUrl(uris[index]['link']),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            Text(widget.body, style: StyleTool.description),
          ],
        ),
      ),
    );
  }
}
