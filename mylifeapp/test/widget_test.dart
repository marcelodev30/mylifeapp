import 'package:flutter/rendering.dart';
import 'package:mylifeapp/data/models/treino/exercicio_treino_models.dart';
import 'package:mylifeapp/data/models/treino/serie_treino_models.dart';
import 'package:mylifeapp/data/models/treino/treino_dia_models.dart';

void main() {
  TreinoDoDia treinoPeitor = TreinoDoDia(
    name: 'Peitor',
    exercicios: [
      ExercicioTreinoModels(
        nome: 'SUPINO RETO MÁQUINA',
        series: [
          SerieTreinoModel(
            serie: 1,
            reps: 12,
            carga: 15,
            controle: 'bom',
            velocidadeExecucao: 'vento',
            tipoSerie: 'Aquecimento',
          ),
          SerieTreinoModel(
            serie: 2,
            reps: 8,
            carga: 30,
            tipoSerie: 'Série de Preparação',
            controle: 'bom',
            velocidadeExecucao: 'lento',
          ),
          SerieTreinoModel(
            serie: 3,
            reps: 7,
            carga: 50,
            tipoSerie: 'Série Válida',
            falha: true,
            ajuda: 0,
            velocidadeExecucao: 'lento',
          ),
          SerieTreinoModel(
            serie: 4,
            reps: 7,
            carga: 60,
            tipoSerie: 'Série Válida',
            falha: true,
            ajuda: 0,
            velocidadeExecucao: 'lento',
          ),
        ],
      ),
      ExercicioTreinoModels(
        nome: 'SUPINO INCLINADO MÁQUINA',
        series: [
          SerieTreinoModel(
            serie: 1,
            reps: 12,
            carga: 15,
            controle: 'bom',
            velocidadeExecucao: 'vento',
            tipoSerie: 'Aquecimento',
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
      ),
    ],
  );

  // SUPINO RETO MÁQUINA
  // VOADOR MÁQUINA
  //

  debugPrint(treinoPeitor.toString());
}
