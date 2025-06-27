import 'package:mylifeapp/core/config/constants/enum_config.dart';
import 'package:mylifeapp/data/models/foto_progresso_model.dart';
import 'package:mylifeapp/data/models/medida_corporal_model.dart';
import 'package:mylifeapp/data/models/treino/treino_dia_models.dart';

class AppUser {
  final String id;
  final String nome;
  final String email;
  final TipoUsuario tipoUsuario;
  final String? fotoUrl;
  final DateTime createdAt;
  final List<TreinoDoDia> treinos = [];
  final List<FotoProgressoModel> linhaDoTempo = [];
  final List<MedidaCorporalModel> historicoMedidas = [];

  AppUser({
    required this.id,
    required this.nome,
    required this.email,
    required this.tipoUsuario,
    this.fotoUrl,
    required this.createdAt,
  });
}
