import '__tools.dart';
//import '__widgets.dart';
import 'package:flutter/material.dart';

class ProjectCard extends StatefulWidget {
  final String title;
  final String body;
  final String image;
  final List<String>? screenshots;
  final String? links;

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
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final List<String>? screenshotsAssets = widget.screenshots;
    final List<ClipRRect> screenshots = [];
    if (screenshotsAssets != null) {
      for (String screenshot in screenshotsAssets) {
        screenshots.add(
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Image.asset(screenshot, width: 181),
          ),
        );
      }
    }
    final String? links = widget.links;
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
                        Row(
                          children: [
                            if (screenshots.length >= 3)
                              IconButton(
                                onPressed: () {
                                  if (_scrollController.position.pixels >=
                                      _scrollController
                                          .position
                                          .minScrollExtent) {
                                    _scrollController.animateTo(
                                      _scrollController.position.pixels - 381,
                                      duration: Durations.medium3,
                                      curve: Curves.easeOut,
                                    );
                                  }
                                },
                                icon: Icon(Icons.arrow_left),
                              ),
                            Expanded(
                              child: SizedBox(
                                height: 100,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  physics: const BouncingScrollPhysics(),
                                  controller: _scrollController,
                                  itemCount: screenshots.length,
                                  itemBuilder: (context, index) {
                                    return screenshots[index];
                                  },
                                ),
                              ),
                            ),
                            if (screenshots.length >= 3)
                              IconButton(
                                onPressed: () {
                                  if (_scrollController.position.pixels <=
                                      _scrollController
                                          .position
                                          .maxScrollExtent) {
                                    _scrollController.animateTo(
                                      _scrollController.position.pixels + 381,
                                      duration: Durations.medium3,
                                      curve: Curves.easeOut,
                                    );
                                  }
                                },
                                icon: Icon(Icons.arrow_right),
                              ),
                          ],
                        ),
                      if (links != null) Text(links, style: StyleTool.note),
                    ],
                  ),
                ),
              ],
            ),
            Text(widget.body),
          ],
        ),
      ),
    );
  }
}
