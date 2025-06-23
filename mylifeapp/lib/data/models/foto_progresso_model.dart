import 'package:uuid/uuid.dart';

class FotoProgressoModel {
  final String id;
  final String idUsuario;
  final DateTime create;
  final String urlImagem;
  final String? descricao; // Ex: "Foto de frente", "Fim do desafio de 30 dias"

  FotoProgressoModel({
    required this.idUsuario,
    required this.urlImagem,
    this.descricao,
    DateTime? create,
    String? id,
  }) : id = Uuid().v4(),
       create = create ?? DateTime.now();

  factory FotoProgressoModel.fromJson(Map<String, dynamic> json) {
    return FotoProgressoModel(
      id: json['id'] as String?,
      idUsuario: json['idUsuario'],
      create: DateTime.parse(json['create'] as String),
      urlImagem: json['urlImagem'],
      descricao: json['descricao'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'idUsuario': idUsuario,
      'create': create.toIso8601String(),
      'urlImagem': urlImagem,
      'descricao': descricao,
    };
  }
}
