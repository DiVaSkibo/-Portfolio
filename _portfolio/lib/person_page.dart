import 'package:_portfolio/__tools.dart';
import 'package:_portfolio/_person_card.dart';
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
          onPressed: () => {},
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
              onPressed: () => Navigator.pushNamed(context, '/projects'),
              child: Text('Projects'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsetsGeometry.all(36),
            child: Column(
              spacing: 36,
              children: [
                PersonCard(
                  title: 'Dmytro SKIBO',
                  body:
                      'Learn Computer Science in National Aerospace University - Kharkiv Aviation Institute. Faculty of Aircraft Control Systems. Department of Mathematical Modelling and Artificial Intelligence.',
                  image: 'assets/image/avatar/Me.jpg',
                  info: '16.12.2004\nKharkiv, Ukraine',
                  links: {
                    '+380 66 727 4718': '+380 66 727 4718',
                    'pipaski0264@gmail.com': 'pipaski0264@gmail.com',
                    'https://t.me/Zlo_Ol2': 'https://t.me/Zlo_Ol2',
                  },
                ),
                // PersonCard(
                //   title: 'Zlo_Ol2',
                //   body:
                //       '+ v o . c D[    Г o] D] L] A L]    D]    v L] A o . L] D + ^ г г ^[ Г    v[ ґ    D + o] +] L o    .',
                //   image: 'assets/image/avatar/Zlo.jpg',
                //   links:
                //       'https://www.youtube.com/@dunkelbahn7022\nhttps://www.youtube.com/@zlo_ol2',
                // ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
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
