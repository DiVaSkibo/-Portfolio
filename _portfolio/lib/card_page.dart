import '__tools.dart';
import '_person_card.dart';
import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsTool.mainShade,
      appBar: AppBar(
        backgroundColor: ColorsTool.main,
        leading: IconButton(
          onPressed: () => print('-> card page'),
          icon: Icon(Icons.accessibility, size: 36, color: ColorsTool.accent),
        ),
        title: Row(
          spacing: 27,
          children: [
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/skills'),
              child: Text('Skills'),
            ),
            TextButton(
              onPressed: () => print('-> Experience'),
              child: Text('Experience'),
            ),
            TextButton(
              onPressed: () => print('-> Projects'),
              child: Text('Projects'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(36),
          child: Column(spacing: 36, children: [PersonCard(), PersonCard()]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('-> up'),
        backgroundColor: ColorsTool.accent,
        shape: CircleBorder(),
        child: Center(
          child: Icon(
            Icons.arrow_drop_up,
            size: 54,
            color: ColorsTool.accentShade,
          ),
        ),
      ),
    );
  }
}
