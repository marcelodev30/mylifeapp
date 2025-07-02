import 'package:mylifeapp/data/models/saude/alimentacao/refeicao_models.dart';

class PlanoAlimentar {
  final String id;
  final String alunoId;
  final String? nutricionistaId;
  final String nome; // ex: "Plano para Definição Muscular"
  final DateTime dataInicio;
  final List<Refeicao> refeicoes;

  const PlanoAlimentar({
    required this.id,
    required this.alunoId,
    this.nutricionistaId,
    required this.nome,
    required this.dataInicio,
    required this.refeicoes,
  });

}
