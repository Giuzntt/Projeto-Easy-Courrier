import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Integrantes \n',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'Andre Luiz Maia Tapioca Brenneisen RM: 79922 - 3SIB \n'
            'Gabriel Domingues de Almeida RM: 83422 - 3SIB \n'
            'Giulianno Zanetti RM:82126 - 3SIR \n'
            'Guilherme Hideki Takara Chalita RM: 82358 - 3SIB \n'
            'Marcos Lopes da Silva Junior RM: 82813 - 3SIB',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
