import 'dart:convert';

List<Passagem> passagemFromJson(String str) =>
    List<Passagem>.from(json.decode(str).map((x) => Passagem.fromJson(x)));

class Passagem {
  int id;
  String placa;
  String data;
  String hora;
  String equipamento;
  String faixa;

  Passagem(
      {this.id,
      this.placa,
      this.data,
      this.hora,
      this.equipamento,
      this.faixa});

  static Passagem fromJson(json) => Passagem(
        id: json["id"],
        placa: json["Placa"],
        data: json["Data"],
        hora: json["Hora"],
        equipamento: json["Equipamento"],
        faixa: json["Faixa"],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Placa'] = this.placa;
    data['Data'] = this.data;
    data['Hora'] = this.hora;
    data['Equipamento'] = this.equipamento;
    data['Faixa'] = this.faixa;
    return data;
  }
}
