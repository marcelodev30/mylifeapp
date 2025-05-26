import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants_config.dart' show ConstantsApp;
import 'package:mylifeapp/core/config/textstyles_config.dart';
//import 'package:mylifeapp/core/config/colors_config.dart';

class LayoutBaseLogin extends StatelessWidget {
  const LayoutBaseLogin({super.key , required this.body});
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0F1C),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             
              Image.asset(ConstantsApp.imgLogoV1,width: 270,height: 270),
              //SizedBox(height: 16),
              //Text(ConstantsApp.titleApp, style: AppTextStyles.appTitle32),
              SizedBox(height: 32),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                child: Padding(padding: EdgeInsets.all(24),child: body,), 
              )
            ],
          ),
        ),
      ),
    );
  }
}