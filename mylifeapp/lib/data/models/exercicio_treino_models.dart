import 'package:mylifeapp/data/models/serie_treino_models.dart';
import 'package:uuid/uuid.dart';

class ExercicioTreinoModels {
  final String id;
  final String nome;
  final DateTime createDataTime;
  List<SerieTreinoModel> series;
  int? percepcaoRPE;
  // Volume Total de séries x reps x carga

  ExercicioTreinoModels({
    required this.nome,
    required this.series,
    this.percepcaoRPE,
    String? id,
    DateTime? createDataTime,
  }) : id = Uuid().v4(),
       createDataTime = DateTime.now();

  factory ExercicioTreinoModels.fromJson(Map<String, dynamic> json) {
    return ExercicioTreinoModels(
      id: json['id'] as String?,
      nome: json['nome'] as String,
      percepcaoRPE: json['percepcaoRPE'] as int?,
      createDataTime: DateTime.parse(json['createDataTime'] as String),
      series:
          (json['series'] as List<dynamic>)
              .map(
                (serieJson) => SerieTreinoModel.fromJson(
                  serieJson as Map<String, dynamic>,
                ),
              )
              .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'createDataTime': createDataTime.toIso8601String(),
      'percepcaoRPE': percepcaoRPE,
      'series': series.map((serie) => serie.toJson()).toList(),
    };
  }

  @override
  String toString() {
    return 'id: $id, nome: $nome,series: ${series.toString()} ';
  }
}
