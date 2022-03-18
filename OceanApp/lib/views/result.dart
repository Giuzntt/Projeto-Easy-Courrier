import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/ocean_model.dart';

class ResultScreen extends StatefulWidget {
  ResultScreen({@required this.ocean, Key key}) : super(key: key);
  final OceanModel ocean;

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: Text(widget.ocean.id.toString() ?? ''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            labelValue('ID'),
            fieldValue(widget.ocean.id.toString()),
            espaco(),
            labelValue('Localidade'),
            fieldValue(widget.ocean.localidade),
            espaco(),
            labelValue('Data'),
            fieldValue(widget.ocean.data),
            espaco(),
            labelValue('Temperatura'),
            fieldValue(widget.ocean.temperatura),
            espaco(),
            labelValue('pH'),
            fieldValue(widget.ocean.ph),
            espaco(),
            labelValue('Oxigenio Dissolvido'),
            fieldValue(widget.ocean.oxigenioDissolvido),
            espaco(),
          ],
        ),
      ),
    );
  }

  SizedBox espaco() => SizedBox(
        height: 16,
      );

  Widget labelValue(String _label) {
    return Text(
      '$_label:',
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Color.fromRGBO(64, 75, 96, 1),
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        fontSize: 18,
      ),
    );
  }

  Widget fieldValue(String _value) {
    return Text(
      _value,
      style: TextStyle(
        color: Color.fromRGBO(64, 75, 96, .9),
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w800,
        fontSize: 20,
      ),
    );
  }
}
