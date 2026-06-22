// Header roxo com avatar do usuário e ícones de ação.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubankt02/theme/app_tokens.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.nomeUsuario});

  final String nomeUsuario;

  Widget _headerIcon(String asset) {
    return SizedBox(
      width: 21,
      height: 21,
      child: Image.asset(asset, color: AppColors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.backgroundPurple,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 14, 20, 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 42,
                    height: 42,
                    decoration: const BoxDecoration(
                      color: AppColors.backgroundPurpleDark,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.person_outline,
                      color: AppColors.white,
                      size: 22,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      _headerIcon('assets/images/iconevisualizacao.png'),
                      const SizedBox(width: 18),
                      _headerIcon('assets/images/iconeajuda.png'),
                      const SizedBox(width: 18),
                      _headerIcon('assets/images/Iconeconvite.png'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Text(
                'Olá, $nomeUsuario',
                style: GoogleFonts.poppins(
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
