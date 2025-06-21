import 'package:flutter/rendering.dart';
import 'package:mylifeapp/data/models/treino/exercicio_models.dart';
import 'package:mylifeapp/data/models/treino/serie_models.dart';

void main() {
  var s = ExercicioTreinoModels(
    nome: 'SUPINO RETO MÁQUINA',
    serie: [
      SerieTreinoModel(
        serie: 1,
        reps: 12,
        carga: 15,
        controle: 'bom',
        velocidadeExecucao: 'vento',
        tipoSerie: 'Aquecimento',
        intervaloseries: 90,
      ),
      SerieTreinoModel(
        serie: 2,
        reps: 8,
        carga: 25,
        tipoSerie: 'Série de Preparação',
        controle: 'bom',
        velocidadeExecucao: 'lento',
      ),
      SerieTreinoModel(
        serie: 3,
        reps: 7,
        carga: 30,
        tipoSerie: 'Série Válida',
        falha: true,
        ajuda: 0,
        velocidadeExecucao: 'lento',
      ),
    ],
  );

  // SUPINO RETO MÁQUINA
  // VOADOR MÁQUINA
  // SUPINO INCLINADO MÁQUINA

  debugPrint(s.toString());
}
