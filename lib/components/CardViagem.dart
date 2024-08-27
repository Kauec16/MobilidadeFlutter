import 'package:fase5atv/components/CardComponent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cardviagem extends StatelessWidget {
  final String imagePath;
  const Cardviagem({Key? key, required this.imagePath}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * 0.9,
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.deepPurple, // Cor da borda
          width: 2.0, // Largura da borda
        ),
      ),
      child: Row(
        children: [
          Image.network(imagePath),
            Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Preço: 80,00RS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.deepPurple
                      )
                  ),
                  Text('Tempo de viagem: 1h 30m'),
                ]

            )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: Text('Comprar passagem'),
                  ),
                ]
            )),
          ),
        ],
      ),
    );
  }
}
