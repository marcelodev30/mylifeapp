import 'package:uuid/uuid.dart';

class SerieModel {
  final String id;
  final int serie;
  final int reps;
  final double carga;
  final DateTime createdAt;
  String? tipoSerie;
  String? controle;
  bool falha;
  int? ajuda;

  SerieModel({
    required this.reps,
    required this.serie,
    required this.carga,
    this.falha = false,
    this.ajuda = 0,
    this.tipoSerie,
    this.controle,
  }) : id = Uuid().v4(),
       createdAt = DateTime.now();

  factory SerieModel.fromJson(Map<String, dynamic> map) {
    return SerieModel(
      serie: map['serie'] as int,
      tipoSerie: map['tipoSerie'] as String?,
      controle: map['controle'] as String?,
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
    };
  }

  @override
  String toString() =>
      'id: $id, serie: $serie, tipoSerie: $tipoSerie, reps: $reps, carga: $carga, falha: $falha';
}
