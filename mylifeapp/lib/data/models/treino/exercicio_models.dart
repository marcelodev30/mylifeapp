import 'package:mylifeapp/data/models/treino/serie_models.dart';
import 'package:uuid/uuid.dart';

class ExercicioTreinoModels {
  final String id;
  final String nome;
  final DateTime createDataTime;
  List<SerieTreinoModel> serie;
  int? percepcaoRPE;
  // Volume Total de séries x reps x carga

  ExercicioTreinoModels({
    required this.nome,
    required this.serie,
    this.percepcaoRPE,
  }) : id = Uuid().v4(),
       createDataTime = DateTime.now();

  @override
  String toString() {
    return 'id: $id, nome: $nome,series: ${serie.toString()} ';
  }
}
