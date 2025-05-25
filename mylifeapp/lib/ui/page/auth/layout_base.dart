import 'package:flutter/material.dart';
//import 'package:mylifeapp/core/config/colors_config.dart';

class LayoutBaseLogin extends StatefulWidget {
  const LayoutBaseLogin({super.key});

  @override
  State<LayoutBaseLogin> createState() => _LayoutBaseLoginState();
}

class _LayoutBaseLoginState extends State<LayoutBaseLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0F1C),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.6,
            margin: EdgeInsets.symmetric(horizontal: 50),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFF15223B),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(24)
            ),
          ),
        ],
      ),
    );
  }
}