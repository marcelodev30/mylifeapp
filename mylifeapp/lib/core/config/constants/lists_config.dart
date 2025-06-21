import 'package:mylifeapp/data/models/models%20genericos/definicao_models.dart';
import 'package:mylifeapp/data/models/models%20genericos/tipo_models.dart';

class AppLists {
  static List<TipoModel> tipoDeSerie = [
    TipoModel(
      nomeTecnico: "Aquecimento Geral",
      descricao: "Mobilidade articular",
      quandoUsar: "Antes de tocar em pesos",
    ),
    TipoModel(
      nomeTecnico: "Aquecimento",
      descricao: "Série com baixa carga, mesmo movimento do exercício",
      quandoUsar: "10-15 reps com peso leve",
    ),
    TipoModel(
      nomeTecnico: "Série de Preparação",
      descricao: "Carga leve (~50%) para ativar o músculo",
      quandoUsar: "6-8 reps com 50% da carga máxima",
    ),
    TipoModel(
      nomeTecnico: "Série de Reconhecimento",
      descricao: "Testa a carga-alvo para saber se vai render ou ajustar",
      quandoUsar: "1 série com a carga real para sentir desempenho",
    ),
    TipoModel(
      nomeTecnico: "Série Válida",
      descricao: "Onde conta pra estímulo real.",
      quandoUsar: "6-12 reps com boa carga — conta como série de trabalho",
    ),
    TipoModel(
      nomeTecnico: "Série de Choque / Intensidade",
      descricao: "Drop-set, rest-pause, forçadas, excêntricas",
      quandoUsar: "Extras para mais estímulo após as válidas",
    ),
  ];

  static List<TipoModel> tiposDeFalha = [
    TipoModel(
      nomeTecnico: "Sem falha",
      descricao: "Interrompe a série antes da falha, com margem de reps.",
      quandoUsar: "Quando quer preservar sistema nervoso ou recuperar.",
    ),
    TipoModel(
      nomeTecnico: "Falha Técnica",
      descricao: "Para quando a execução começa a perder qualidade.",
      quandoUsar: "Foco em segurança e controle.",
    ),
    TipoModel(
      nomeTecnico: "Falha Concêntrica",
      descricao: "Não consegue mais subir o peso.",
      quandoUsar: "Foco em hipertrofia.",
    ),
    TipoModel(
      nomeTecnico: "Falha Excêntrica",
      descricao: "Não consegue mais controlar a descida.",
      quandoUsar: "Avançado, geralmente com ajuda.",
    ),
    TipoModel(
      nomeTecnico: "Falha Voluntária",
      descricao: "Decide parar antes de qualquer falha real.",
      quandoUsar: "Controle mental, estratégia de recuperação.",
    ),
  ];
  static List<DefinicaoModel> definicoesDeExecucao = [
    DefinicaoModel(
      nome: 'Explosivo',
      descricao: 'Movimento rápido tanto na descida quanto na subida.',
      objetivo: 'Melhorar potência e velocidade.',
    ),
    DefinicaoModel(
      nome: 'Explosivo Controlado',
      descricao: 'Descida controlada e subida explosiva.',
      objetivo: 'Força e controle neuromuscular.',
    ),
    DefinicaoModel(
      nome: 'Lento Controlado',
      descricao: 'Execução lenta com pausas em cada fase.',
      objetivo: 'Aumentar tempo sob tensão e controle muscular.',
    ),
    DefinicaoModel(
      nome: 'Isométrico',
      descricao: 'Pausa no meio da repetição para foco em estabilidade.',
      objetivo: 'Fortalecer pontos fracos e controle.',
    ),
    DefinicaoModel(
      nome: 'Superlento',
      descricao: 'Execução extremamente lenta sem pausas.',
      objetivo: 'Máximo tempo sob tensão para hipertrofia.',
    ),
    DefinicaoModel(
      nome: 'Com pausa no pico',
      descricao: 'Pausa no topo da contração.',
      objetivo: 'Maior ativação muscular e controle no pico.',
    ),
    DefinicaoModel(
      nome: 'Drop Tempo',
      descricao: 'Ritmo constante até a falha muscular.',
      objetivo: 'Exaustão e estímulo metabólico.',
    ),
  ];
}
