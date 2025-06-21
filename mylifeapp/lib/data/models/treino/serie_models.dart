import 'package:uuid/uuid.dart';

class SerieTreinoModel {
  final String id;
  final int serie;
  final int reps;
  final double carga;
  String? velocidadeExecucao;
  String? tipoSerie;
  String? controle;
  double? intervaloseries;
  bool falha;
  int? ajuda;

  SerieTreinoModel({
    required this.reps,
    required this.serie,
    required this.carga,
    this.falha = false,
    this.ajuda = 0,
    this.tipoSerie,
    this.controle,
    this.velocidadeExecucao,
    this.intervaloseries,
  }) : id = Uuid().v4();

  factory SerieTreinoModel.fromJson(Map<String, dynamic> map) {
    return SerieTreinoModel(
      serie: map['serie'] as int,
      tipoSerie: map['tipoSerie'] as String?,
      controle: map['controle'] as String?,
      velocidadeExecucao: map['velocidadeExecucao'] as String?,
      reps: map['reps'] as int,
      carga: (map['carga'] as num).toDouble(),
      falha: map['falha'] as bool,
      ajuda: map['ajuda'] as int?,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'serie': serie,
      'tipoSerie': tipoSerie,
      'controle': controle,
      'reps': reps,
      'carga': carga,
      'falha': falha,
      'ajuda': ajuda,
      'velocidadeExecucao': velocidadeExecucao,
    };
  }

  @override
  String toString() =>
      'id: $id, Serie: $serie, Tipo de Serie: $tipoSerie, Reps: $reps, Carga: $carga, Falha: $falha, Velocidade de Execucao: $velocidadeExecucao';
}
