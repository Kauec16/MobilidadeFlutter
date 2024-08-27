import 'package:fase5atv/components/CardViagem.dart';
import 'package:flutter/material.dart';

class Mapa extends StatelessWidget {
  final String imagePath;
  const Mapa({Key? key, required this.imagePath}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[100],
        title: Text('Back'),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            color: Colors.grey,
            child: Image.asset('assets/mapa.png', // Caminho da imagem
                fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Endereço',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 8.0), // Espaço entre o TextField e o botão
                ElevatedButton(
                  onPressed: () {
                    // Ação a ser realizada quando o botão for pressionado
                    print('Botão pressionado');
                  },
                  style:
                      ElevatedButton.styleFrom(shape: RoundedRectangleBorder()),
                  child: Text('Buscar'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Cardviagem(imagePath: imagePath),
          )
        ],
      ),
    );
  }
}
