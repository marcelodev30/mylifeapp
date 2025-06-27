import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/icons_config.dart';

enum Status { pendente, processando, concluido, falhou }

enum Controle { leve, bom }

enum TipoUsuario { aluno, trainer, nutricionista }

enum TipoSerie { aquecimento, preparacao, reconhecimento, serieDeTrabalho }

enum DiaDaSemana { segunda, terca, quarta, quinta, sexta, sabado, domingo }

enum NivelEsforco { muitoLeve, leve, moderado, dificil, maximo }

enum TipoRefeicao {
  cafeDaManha,
  lancheDaManha,
  almoco,
  lancheDaTarde,
  preTreino,
  posTreino,
  jantar,
  ceia,
}

extension TipoSerieExtension on TipoSerie {
  String get displayName {
    switch (this) {
      case TipoSerie.aquecimento:
        return 'Aquecimento';
      case TipoSerie.preparacao:
        return 'Série de Preparação';
      case TipoSerie.reconhecimento:
        return 'Reconhecimento de Carga';
      case TipoSerie.serieDeTrabalho:
        return 'Série de Trabalho';
    }
  }

  dynamic get icon {
    switch (this) {
      case TipoSerie.aquecimento:
        return AppIcons.heating;
      case TipoSerie.preparacao:
        return AppIcons.preparation;
      case TipoSerie.reconhecimento:
        return AppIcons.recognition;
      case TipoSerie.serieDeTrabalho:
        return AppIcons.workSeries;
    }
  }

  Color get color {
    switch (this) {
      case TipoSerie.aquecimento:
        return Colors.orange.shade600;
      case TipoSerie.preparacao:
        return Colors.teal.shade500;
      case TipoSerie.reconhecimento:
        return Colors.purple.shade500;
      case TipoSerie.serieDeTrabalho:
        return Colors.blue.shade700;
    }
  }
}

// =======================================================================
// Dias da Semana
extension DiaDaSemanaExtension on DiaDaSemana {
  String get displayName {
    switch (this) {
      case DiaDaSemana.segunda:
        return 'Segunda-feira';
      case DiaDaSemana.terca:
        return 'Terça-feira';
      case DiaDaSemana.quarta:
        return 'Quarta-feira';
      case DiaDaSemana.quinta:
        return 'Quinta-feira';
      case DiaDaSemana.sexta:
        return 'Sexta-feira';
      case DiaDaSemana.sabado:
        return 'Sábado';
      case DiaDaSemana.domingo:
        return 'Domingo';
    }
  }

  String get shortDisplayName {
    switch (this) {
      case DiaDaSemana.segunda:
        return 'SEG';
      case DiaDaSemana.terca:
        return 'TER';
      case DiaDaSemana.quarta:
        return 'QUA';
      case DiaDaSemana.quinta:
        return 'QUI';
      case DiaDaSemana.sexta:
        return 'SEX';
      case DiaDaSemana.sabado:
        return 'SÁB';
      case DiaDaSemana.domingo:
        return 'DOM';
    }
  }
}

extension TipoRefeicaoExtension on TipoRefeicao {
  String get displayName {
    switch (this) {
      case TipoRefeicao.cafeDaManha:
        return 'Café da Manhã';
      case TipoRefeicao.lancheDaManha:
        return 'Lanche da Manhã';
      case TipoRefeicao.almoco:
        return 'Almoço';
      case TipoRefeicao.lancheDaTarde:
        return 'Lanche da Tarde';
      case TipoRefeicao.preTreino:
        return 'Pré-Treino';
      case TipoRefeicao.posTreino:
        return 'Pós-Treino';
      case TipoRefeicao.jantar:
        return 'Jantar';
      case TipoRefeicao.ceia:
        return 'Ceia';
    }
  }

  dynamic get icon {
    switch (this) {
      case TipoRefeicao.cafeDaManha:
        return AppIcons.breakfast;
      case TipoRefeicao.lancheDaManha:
        return AppIcons.morningSnack;
      case TipoRefeicao.almoco:
        return AppIcons.lunch;
      case TipoRefeicao.lancheDaTarde:
        return AppIcons.afternoonSnack;
      case TipoRefeicao.preTreino:
        return AppIcons.preWorkout;
      case TipoRefeicao.posTreino:
        return AppIcons.postWorkout;
      case TipoRefeicao.jantar:
        return AppIcons.dinner;
      case TipoRefeicao.ceia:
        return AppIcons.supper;
    }
  }
}

// =======================================================================
// Tipos de Usuário
extension TipoUsuarioExtension on TipoUsuario {
  String get displayName {
    switch (this) {
      case TipoUsuario.aluno:
        return 'Aluno';
      case TipoUsuario.trainer:
        return 'Personal Trainer'; // Nome mais claro para a UI
      case TipoUsuario.nutricionista:
        return 'Nutricionista';
    }
  }
}

extension NivelEsforcoExtension on NivelEsforco {
  String get displayName {
    switch (this) {
      case NivelEsforco.muitoLeve:
        return 'Muito Leve';
      case NivelEsforco.leve:
        return 'Leve';
      case NivelEsforco.moderado:
        return 'Moderado';
      case NivelEsforco.dificil:
        return 'Difícil';
      case NivelEsforco.maximo:
        return 'Máximo Esforço';
    }
  }

  dynamic get icon {
    switch (this) {
      case NivelEsforco.muitoLeve:
        return Icons.sentiment_very_satisfied_rounded;
      case NivelEsforco.leve:
        return Icons.sentiment_satisfied_rounded;
      case NivelEsforco.moderado:
        return Icons.sentiment_neutral_rounded;
      case NivelEsforco.dificil:
        return Icons.sentiment_dissatisfied_rounded;
      case NivelEsforco.maximo:
        return Icons.sentiment_very_dissatisfied_rounded;
    }
  }
}
