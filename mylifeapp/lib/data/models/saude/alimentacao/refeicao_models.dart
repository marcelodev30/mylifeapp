import 'package:mylifeapp/core/config/constants/enum_config.dart';
import 'package:mylifeapp/data/models/saude/alimentacao/alimento_models.dart';

class Refeicao {
  final TipoRefeicao nome; // "Café da Manhã", "Almoço", etc.
  final String horario; // ex: "08:00"
  final List<Alimento> alimentos;

  const Refeicao({
    required this.nome,
    required this.horario,
    required this.alimentos,
  });
}
