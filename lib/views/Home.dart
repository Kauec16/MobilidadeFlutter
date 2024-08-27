import 'package:fase5atv/components/CardComponent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[100],
        title: Text('Back'),
      ),
      body: Column(
        children: [
          Row(
            children: [
          CardComponent(imagePath: 'assets/Trem.png', title: 'Trem'),
          CardComponent(imagePath: 'assets/taxi.png', title: 'Taxi'),
            ],
          ),
          Row(
            children: [
              CardComponent(imagePath: 'assets/onibus.png', title: 'Onibus',),
              CardComponent(imagePath: 'assets/aviao.png', title: 'Avião',),
          ]
          )
        ],
      ),
    );
  }
}

