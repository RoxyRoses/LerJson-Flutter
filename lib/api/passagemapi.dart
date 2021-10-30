import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:LerJson/model/passagem.dart';

class PassagemApi {
  static Future<List<Passagem>> carregarJson(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final caminho = await assetBundle
        .loadString('jsons/08002fluxo_21012020153220343_1.json');
    final corpo = json.decode(caminho);

    return corpo.map<Passagem>(Passagem.fromJson).toList();
  }

  static Future<List<Passagem>> carregarJson2(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final caminho = await assetBundle
        .loadString('jsons/08002fluxo_21012020153218873_4.json');
    final corpo = json.decode(caminho);

    return corpo.map<Passagem>(Passagem.fromJson).toList();
  }

  static Future<List<Passagem>> carregarJson3(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final caminho = await assetBundle
        .loadString('jsons/08002fluxo_21012020153222803_1.json');
    final corpo = json.decode(caminho);

    return corpo.map<Passagem>(Passagem.fromJson).toList();
  }

  static Future<List<Passagem>> carregarJson4(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final caminho = await assetBundle
        .loadString('jsons/08002fluxo_21012020153223195_4.json');
    final corpo = json.decode(caminho);

    return corpo.map<Passagem>(Passagem.fromJson).toList();
  }

  static Future<List<Passagem>> carregarJson5(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final caminho = await assetBundle
        .loadString('jsons/08002fluxo_21012020153224845_1.json');
    final corpo = json.decode(caminho);

    return corpo.map<Passagem>(Passagem.fromJson).toList();
  }

  static Future<List<Passagem>> carregarJson6(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final caminho = await assetBundle
        .loadString('jsons/08002fluxo_21012020153226495_2.json');
    final corpo = json.decode(caminho);

    return corpo.map<Passagem>(Passagem.fromJson).toList();
  }

  static Future<List<Passagem>> carregarJson7(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final caminho = await assetBundle
        .loadString('jsons/08002fluxo_21012020153230005_1.json');
    final corpo = json.decode(caminho);

    return corpo.map<Passagem>(Passagem.fromJson).toList();
  }

  static Future<List<Passagem>> carregarJson8(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final caminho = await assetBundle
        .loadString('jsons/08002fluxo_21012020153232765_1.json');
    final corpo = json.decode(caminho);

    return corpo.map<Passagem>(Passagem.fromJson).toList();
  }

  static Future<List<Passagem>> carregarJson9(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final caminho = await assetBundle
        .loadString('jsons/08002fluxo_21012020153238435_2.json');
    final corpo = json.decode(caminho);

    return corpo.map<Passagem>(Passagem.fromJson).toList();
  }

  static Future<List<Passagem>> carregarJson10(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final caminho = await assetBundle
        .loadString('jsons/08002fluxo_21012020153238645_1.json');
    final corpo = json.decode(caminho);

    return corpo.map<Passagem>(Passagem.fromJson).toList();
  }

  static Future<List<Passagem>> carregarJson11(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final caminho = await assetBundle
        .loadString('jsons/08002fluxo_21012020153244645_2.json');
    final corpo = json.decode(caminho);

    return corpo.map<Passagem>(Passagem.fromJson).toList();
  }

  static Future<List<Passagem>> carregarJson12(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final caminho = await assetBundle
        .loadString('jsons/08002fluxo_21012020153250140_4.json');
    final corpo = json.decode(caminho);

    return corpo.map<Passagem>(Passagem.fromJson).toList();
  }

  static Future<List<Passagem>> carregarJson13(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final caminho = await assetBundle
        .loadString('jsons/08002fluxo_21012020153253530_4.json');
    final corpo = json.decode(caminho);

    return corpo.map<Passagem>(Passagem.fromJson).toList();
  }

  static Future<List<Passagem>> carregarJson14(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final caminho = await assetBundle
        .loadString('jsons/08002fluxo_21012020153256200_2.json');
    final corpo = json.decode(caminho);

    return corpo.map<Passagem>(Passagem.fromJson).toList();
  }
}
