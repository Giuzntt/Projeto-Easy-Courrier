import 'dart:convert';

List<OceanModel> oceanModelFromJson(String str) =>
    List<OceanModel>.from(json.decode(str).map((x) => OceanModel.fromJson(x)));

String oceanModelToJson(List<OceanModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OceanModel {
  OceanModel({
    this.localidade,
    this.data,
    this.temperatura,
    this.ph,
    this.oxigenioDissolvido,
    this.id,
  });

  String localidade;
  String data;
  String temperatura;
  String ph;
  String oxigenioDissolvido;
  String id;

  factory OceanModel.fromJson(Map<String, dynamic> json) => OceanModel(
        localidade: json["localidade"] == null ? null : json["localidade"],
        data: json["data"] == null ? null : json["data"],
        temperatura: json["temperatura"] == null ? null : json["temperatura"],
        ph: json["ph"] == null ? null : json["ph"],
        oxigenioDissolvido: json["oxigenioDissolvido"] == null
            ? null
            : json["oxigenioDissolvido"],
        id: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "localidade": localidade == null ? null : localidade,
        "data": data == null ? null : data,
        "temperatura": temperatura == null ? null : temperatura,
        "ph": ph == null ? null : ph,
        "oxigenioDissolvido":
            oxigenioDissolvido == null ? null : oxigenioDissolvido,
        "id": id == null ? null : id,
      };
}
