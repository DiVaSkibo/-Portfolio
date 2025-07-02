import '__tools.dart';
import 'package:flutter/material.dart';

class PersonCard extends StatefulWidget {
  const PersonCard({super.key});

  @override
  State<PersonCard> createState() => _PersonCardState();
}

class _PersonCardState extends State<PersonCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(36),
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
                  'assets/image/Me.jpg',
                  width: MediaQuery.of(context).size.width / 6,
                ),
              ),
              Text('16.12.2004\nKharkiv, Ukraine', textAlign: TextAlign.left),
              Text(
                '+380 66 727 4718\npipaski0264@gmail.com\nhttps://t.me/Zlo_Ol2',
                textAlign: TextAlign.right,
              ),
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dmytro SKIBO',
                  style: TextStyle(fontSize: 36),
                  textAlign: TextAlign.left,
                ),
                Divider(thickness: 2, color: ColorsTool.mainShade),
                Text(
                  'Learn Computer Science in National Aerospace University - Kharkiv Aviation Institute. Faculty of Aircraft Control Systems. Department of Mathematical Modelling and Artificial Intelligence.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
