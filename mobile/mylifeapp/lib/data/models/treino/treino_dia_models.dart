import 'package:mylifeapp/data/models/treino/exercicio_treino_models.dart';
import 'package:uuid/uuid.dart';

class TreinoDoDia {
  final String id;
  final String name; // Peito"
  final List<ExercicioTreinoModels> exercicios;
  final DateTime createDataTime;

  TreinoDoDia({
    required this.name,
    required this.exercicios,
    String? id,
    DateTime? createDataTime,
  }) : id = id ?? Uuid().v4(),
       createDataTime = createDataTime ?? DateTime.now();

  factory TreinoDoDia.fromJson(Map<String, dynamic> json) {
    return TreinoDoDia(
      id: json['id'] as String?,
      name: json['nome'] as String,
      createDataTime: DateTime.parse(json['createDataTime'] as String),
      exercicios:
          (json['exercicios'] as List<dynamic>)
              .map(
                (exercicioJson) => ExercicioTreinoModels.fromJson(
                  exercicioJson as Map<String, dynamic>,
                ),
              )
              .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'createDataTime': createDataTime.toIso8601String(),
      'exercicios': exercicios.map((exercicio) => exercicio.toJson()).toList(),
    };
  }

  @override
  String toString() {
    return 'id: $id, nome: $name,series: ${exercicios.toString()} ';
  }
}
