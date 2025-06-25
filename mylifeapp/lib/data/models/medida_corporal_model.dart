import 'package:uuid/uuid.dart';

class MedidaCorporalModel {
  final String id;
  final String idUsuario;
  final DateTime create;
  final double? pesoKg;
  final double? alturaCm;
  final double? percentualGordura; // % de gordura corporal
  final double? peitoCm;
  final double? cinturaCm;
  final double? quadrilCm;
  final double? bracoDireitoCm;
  final double? bracoEsquerdoCm;
  final double? coxaDireitaCm;
  final double? coxaEsquerdaCm;
  final double? antebracoDireitaCm;
  final double? antebracoEsquerdaCm;
  final double? panturrilha;

  MedidaCorporalModel({
    required this.idUsuario,
    required this.pesoKg,
    this.alturaCm,
    this.percentualGordura,
    this.peitoCm,
    this.cinturaCm,
    this.quadrilCm,
    this.bracoDireitoCm,
    this.bracoEsquerdoCm,
    this.coxaDireitaCm,
    this.coxaEsquerdaCm,
    this.antebracoDireitaCm,
    this.antebracoEsquerdaCm,
    this.panturrilha,
    DateTime? create,
    String? id,
  }) : id = Uuid().v4(),
       create = create ?? DateTime.now();

  factory MedidaCorporalModel.fromJson(Map<String, dynamic> json) {
    return MedidaCorporalModel(
      id: json['id'] as String?,
      idUsuario: json['idUsuario'],
      create: DateTime.parse(json['create'] as String),
      pesoKg: (json['pesoKg'] as num?)?.toDouble(),
      alturaCm: (json['alturaCm'] as num?)?.toDouble(),
      percentualGordura: (json['percentualGordura'] as num?)?.toDouble(),
      peitoCm: (json['peitoCm'] as num?)?.toDouble(),
      cinturaCm: (json['cinturaCm'] as num?)?.toDouble(),
      quadrilCm: (json['quadrilCm'] as num?)?.toDouble(),
      bracoDireitoCm: (json['bracoDireitoCm'] as num?)?.toDouble(),
      bracoEsquerdoCm: (json['bracoEsquerdoCm'] as num?)?.toDouble(),
      coxaDireitaCm: (json['coxaDireitaCm'] as num?)?.toDouble(),
      coxaEsquerdaCm: (json['coxaEsquerdaCm'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'idUsuario': idUsuario,
      'dataMedicao': create.toIso8601String(),
      'pesoKg': pesoKg,
      'alturaCm': alturaCm,
      'percentualGordura': percentualGordura,
      'peitoCm': peitoCm,
      'cinturaCm': cinturaCm,
      'quadrilCm': quadrilCm,
      'bracoDireitoCm': bracoDireitoCm,
      'bracoEsquerdoCm': bracoEsquerdoCm,
      'coxaDireitaCm': coxaDireitaCm,
      'coxaEsquerdaCm': coxaEsquerdaCm,
    };
  }
}
