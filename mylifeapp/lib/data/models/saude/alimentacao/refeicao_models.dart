import 'package:mylifeapp/data/models/saude/alimentacao/alimento_models.dart';

class Refeicao {
  final String nome; // "Café da Manhã", "Almoço", etc.
  final String horario; // ex: "08:00"
  final List<Alimento> alimentos;

  const Refeicao({
    required this.nome,
    required this.horario,
    required this.alimentos,
  });
}
