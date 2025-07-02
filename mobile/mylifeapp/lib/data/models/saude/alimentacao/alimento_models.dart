class Alimento {
  final String nome;
  final double quantidade;
  final String unidade; // "g", "ml", "unidade(s)"
  final double? calorias;
  final double? proteinas;
  final double? carboidratos;
  final double? gorduras;

  const Alimento({
    required this.nome,
    required this.quantidade,
    required this.unidade,
    this.calorias,
    this.proteinas,
    this.carboidratos,
    this.gorduras,
  });
}
