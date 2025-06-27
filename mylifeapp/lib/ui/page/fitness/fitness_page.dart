import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/enum_config.dart';

class FitnessPage extends StatefulWidget {
  const FitnessPage({super.key});

  @override
  State<FitnessPage> createState() => _FitnessPageState();
}

class _FitnessPageState extends State<FitnessPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(TipoSerie.reconhecimento.displayName(context)));
  }
}
