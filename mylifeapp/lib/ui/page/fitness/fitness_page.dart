import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/enum_config.dart';
import 'package:mylifeapp/ui/components/appbar_components.dart';

class FitnessPage extends StatefulWidget {
  const FitnessPage({super.key});

  @override
  State<FitnessPage> createState() => _FitnessPageState();
}

class _FitnessPageState extends State<FitnessPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyAppBar(name: 'Marcelo Alves'),
        SizedBox(height: 8),
        Column(children: [Text(TipoSerie.reconhecimento.displayName(context))]),
      ],
    );
  }
}
