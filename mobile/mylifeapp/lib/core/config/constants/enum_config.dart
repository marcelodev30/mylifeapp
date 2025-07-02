import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/icons_config.dart';
import 'package:mylifeapp/core/locale/app_localizations.dart';

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

// =======================================================================
// Tipo de Serie do Trenio
extension TipoSerieExtension on TipoSerie {
  String displayName(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    switch (this) {
      case TipoSerie.aquecimento:
        return l10n.series_type_aquecimento;
      case TipoSerie.preparacao:
        return l10n.series_type_preparacao;
      case TipoSerie.reconhecimento:
        return l10n.series_type_reconhecimento;
      case TipoSerie.serieDeTrabalho:
        return l10n.series_type_trabalho;
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
  String longDisplayName(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    switch (this) {
      case DiaDaSemana.segunda:
        return l10n.week_day_segunda_long;
      case DiaDaSemana.terca:
        return l10n.week_day_terca_long;
      case DiaDaSemana.quarta:
        return l10n.week_day_quarta_long;
      case DiaDaSemana.quinta:
        return l10n.week_day_quinta_long;
      case DiaDaSemana.sexta:
        return l10n.week_day_sexta_long;
      case DiaDaSemana.sabado:
        return l10n.week_day_sabado_long;
      case DiaDaSemana.domingo:
        return l10n.week_day_domingo_long;
    }
  }

  /// Retorna a chave para o nome curto do dia (ex: "SEG").
  String shortDisplayName(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    switch (this) {
      case DiaDaSemana.segunda:
        return l10n.week_day_segunda_short;
      case DiaDaSemana.terca:
        return l10n.week_day_terca_short;
      case DiaDaSemana.quarta:
        return l10n.week_day_quarta_short;
      case DiaDaSemana.quinta:
        return l10n.week_day_quinta_short;
      case DiaDaSemana.sexta:
        return l10n.week_day_sexta_short;
      case DiaDaSemana.sabado:
        return l10n.week_day_sabado_short;
      case DiaDaSemana.domingo:
        return l10n.week_day_domingo_short;
    }
  }
}

extension TipoRefeicaoExtension on TipoRefeicao {
  String displayName(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    switch (this) {
      case TipoRefeicao.cafeDaManha:
        return l10n.meal_type_cafe_da_manha;
      case TipoRefeicao.lancheDaManha:
        return l10n.meal_type_lanche_da_manha;
      case TipoRefeicao.almoco:
        return l10n.meal_type_almoco;
      case TipoRefeicao.lancheDaTarde:
        return l10n.meal_type_lanche_da_tarde;
      case TipoRefeicao.preTreino:
        return l10n.meal_type_pre_treino;
      case TipoRefeicao.posTreino:
        return l10n.meal_type_pos_treino;
      case TipoRefeicao.jantar:
        return l10n.meal_type_jantar;
      case TipoRefeicao.ceia:
        return l10n.meal_type_ceia;
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
  String displayName(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    switch (this) {
      case TipoUsuario.aluno:
        return l10n.user_type_aluno;
      case TipoUsuario.trainer:
        return l10n.user_type_trainer;
      case TipoUsuario.nutricionista:
        return l10n.user_type_nutricionista;
    }
  }
}

extension NivelEsforcoExtension on NivelEsforco {
  String displayName(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    switch (this) {
      case NivelEsforco.muitoLeve:
        return l10n.effort_level_muito_leve;
      case NivelEsforco.leve:
        return l10n.effort_level_leve;
      case NivelEsforco.moderado:
        return l10n.effort_level_moderado;
      case NivelEsforco.dificil:
        return l10n.effort_level_dificil;
      case NivelEsforco.maximo:
        return l10n.effort_level_maximo;
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

  Color get color {
    switch (this) {
      case NivelEsforco.muitoLeve:
        return Colors.lightBlue.shade400;
      case NivelEsforco.leve:
        return Colors.green.shade500;
      case NivelEsforco.moderado:
        return Colors.yellow.shade700;
      case NivelEsforco.dificil:
        return Colors.orange.shade600;
      case NivelEsforco.maximo:
        return Colors.red.shade700;
    }
  }

  int get rpeValue {
    switch (this) {
      case NivelEsforco.muitoLeve:
        return 2;
      case NivelEsforco.leve:
        return 4;
      case NivelEsforco.moderado:
        return 6;
      case NivelEsforco.dificil:
        return 8;
      case NivelEsforco.maximo:
        return 10;
    }
  }
}
