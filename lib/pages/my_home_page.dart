// Tela de login com logo e botão de autenticação.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubankt02/theme/app_tokens.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void trocarTela() {
    Navigator.pushReplacementNamed(context, '/secundaria');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPurple,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const Spacer(),
            Center(
              child: AnimatedScale(
                duration: const Duration(milliseconds: 450),
                curve: Curves.easeOut,
                scale: 1,
                child: Image.asset('assets/images/logonubank.png', width: 96),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 18),
              child: SizedBox(
                width: double.infinity,
                height: 38,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: AppRadius.pill),
                  ),
                  onPressed: trocarTela,
                  child: Text(
                    'Usar senha do celular',
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
