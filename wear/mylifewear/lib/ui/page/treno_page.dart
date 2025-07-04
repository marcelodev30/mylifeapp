import 'package:flutter/material.dart';

class SmartwatchGifPage extends StatelessWidget {
  const SmartwatchGifPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.shortestSide * 0.85;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Supino Reto',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Center(
                      child: AspectRatio(
                        aspectRatio: 16 / 9, // Formato retangular do GIF
                        child: Image.asset(
                          'assets/img/supino_banco.gif',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),

                // Legenda
                const Text(
                  '3x10 • Carga moderada',
                  style: TextStyle(fontSize: 12, color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
