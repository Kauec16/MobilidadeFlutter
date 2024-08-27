import 'package:fase5atv/views/map.dart';
import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  final String imagePath;
  final String title;

  const CardComponent({Key? key, required this.imagePath, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        child: Card(
          elevation: 20,
          color: Colors.pink[200],
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(title),
                Image.network(imagePath,
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: MediaQuery.of(context).size.width * 0.30),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Mapa(imagePath: imagePath)));
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurple[100],
                    // Cor de fundo do botãoCor do texto
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                    // Padding interno
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8.0), // Bordas arredondadas
                    ),
                  ),
                  child: Text(
                    'Viajar',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
