import 'package:flutter/material.dart';

class ApresentationScreen extends StatefulWidget {
  @override
  _ApresentationScreenState createState() => _ApresentationScreenState();
}

class _ApresentationScreenState extends State<ApresentationScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Image.asset(
          'assets/image-home.png',
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Text(
            ' Devido as ações humanas os oceanos estão sofrendo com o aumento da temperatura da água, isso pode levar a muitas perdas de vidas marinhas. E também a formacao de furacões, segundo pesquisadores. Segundo a ONU, acredita-se que a reversão é possível. Porém, a velocidade com que os oceanos demonstrarão resultado é muito inferior que a terrestre.',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
