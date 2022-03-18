import 'package:dio/dio.dart';
import 'package:flutter_application_1/model/ocean_model.dart';
import 'package:flutter_application_1/services/service_config.dart';

class OceanService {
  static final String _endpoint =
      "https://61981052164fa60017c22f48.mockapi.io/fiap/relatorios";

  final ServiceConfig service = new ServiceConfig(_endpoint);

  Future<List<OceanModel>> findAllAsync() async {
    // await Future.delayed(Duration(seconds: 2));

    List<OceanModel> lista = [];

    try {
      Response response = await service.create().get(_endpoint);
      if (response.statusCode == 200) {
        print(response.data);
        response.data.forEach(
          (value) {
            OceanModel oceanModel = OceanModel.fromJson(value);
            lista.add(oceanModel);
          },
        );
      }
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }

    return lista;
  }

  // Future<int> create(OceanModel oceanModel) async {
  //   try {
  //     oceanModel.id = 0;
  //     Response response = await service.create().post(
  //           _resource,
  //           data: oceanModel.toMap(),
  //         );

  //     if (response.statusCode == 201) {
  //       var retorno = (response.data["id"] is String)
  //           ? int.parse(response.data["id"])
  //           : response.data["id"];
  //       return retorno;
  //     }
  //   } catch (error) {
  //     print("Service Error: $error ");
  //     throw error;
  //   }
  // }

  Future<OceanModel> getById(int id) async {
    try {
      Response response = await service.create().get(_endpoint + "/$id");

      if (response.statusCode == 200) {
        var retorno = OceanModel.fromJson(response.data);
        return retorno;
      }
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }
  }

  Future<int> update(OceanModel oceanModel) async {
    try {
      String endpoint = _endpoint + "/" + oceanModel.id.toString();

      Response response = await service.create().put(
            endpoint,
            data: oceanModel.toJson(),
          );

      var retorno = (response.data["id"] is String)
          ? int.parse(response.data["id"])
          : response.data["id"];
      return retorno;
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }
  }

  Future<void> delete(OceanModel oceanModel) async {
    try {
      String endpoint = _endpoint + "/" + oceanModel.id.toString();

      Response response = await service.create().delete(
            endpoint,
          );

      if (response.statusCode != 200) {
        throw Exception("Não foi possível excluir o recurso!");
      }
    } catch (error) {
      throw error;
    }
  }
}
