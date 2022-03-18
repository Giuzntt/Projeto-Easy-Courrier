import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/ocean_model.dart';
import 'package:flutter_application_1/services/ocean_service.dart';
import 'package:flutter_application_1/views/result.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final service = OceanService();
  List<OceanModel> listOcean = [];
  bool isLoading = false;

  Future searchOceans(context) async {
    setState(() {
      isLoading = true;
    });
    try {
      final result = await service.findAllAsync();
      setState(() {
        listOcean = result;
      });
      //Navigator.pushNamed(context, '/result', arguments: result);
    } catch (e) {
      print(e);
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  Future getOneOcean(int id, context) async {
    setState(() {
      isLoading = true;
    });
    try {
      final result = await service.getById(id);
      Navigator.pushNamed(context, '/result', arguments: result);
    } catch (e) {
      print(e);
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          OutlinedButton.icon(
            onPressed: () async {
              await searchOceans(context);
            },
            icon: Icon(Icons.search, size: 18),
            label: Text('Pesquisar'),
          ),
          Visibility(
            visible: isLoading,
            child: Center(
              child: CircularProgressIndicator(),
            ),
            replacement: Flexible(
              flex: 1,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: listOcean.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return cardOcean(listOcean[index], context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Card cardOcean(OceanModel ocean, context) {
    return Card(
      elevation: 2,
      margin: new EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 6.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
        ),
        child: ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
              border: new Border(
                right: new BorderSide(
                  width: 1.0,
                  color: Colors.blue.shade100,
                ),
              ),
            ),
            child: Icon(
              Icons.language,
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            ocean.data,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          title: Text(
            ocean.localidade,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
            size: 30.0,
          ),
          onTap: () async {
            getOneOcean(int.tryParse(ocean.id), context);
          },
        ),
      ),
    );
  }
}
