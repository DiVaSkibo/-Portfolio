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
              onPressed: () => Navigator.pushNamed(context, '/experience'),
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
          child: Column(
            spacing: 36,
            children: [
              PersonCard(
                title: 'Dmytro SKIBO',
                body:
                    'Learn Computer Science in National Aerospace University - Kharkiv Aviation Institute. Faculty of Aircraft Control Systems. Department of Mathematical Modelling and Artificial Intelligence.',
                image: 'assets/image/Me.jpg',
                info: '16.12.2004\nKharkiv, Ukraine',
                links:
                    '+380 66 727 4718\npipaski0264@gmail.com\nhttps://t.me/Zlo_Ol2',
              ),
              PersonCard(
                title: 'Zlo_Ol2',
                body: '-[._.]-',
                image: 'assets/image/OO.jpg',
              ),
            ],
          ),
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
