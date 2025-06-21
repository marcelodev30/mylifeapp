import 'package:flutter/rendering.dart';
import 'package:mylifeapp/data/models/treino%20models/serie_models.dart';

void main() {
  SerieModel a1 = SerieModel(serie: 1, reps: 12, carga: 50);
  SerieModel a2 = SerieModel(serie: 2, reps: 7, carga: 55);
  SerieModel a3 = SerieModel(serie: 3, reps: 8, carga: 55);

  debugPrint(a1.toString());
  debugPrint(a2.toString());
  debugPrint(a3.toString());
}
