// Card de acesso rápido aos cartões do usuário.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubankt02/theme/app_tokens.dart';

class MeusCartoesCard extends StatelessWidget {
  const MeusCartoesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: const BoxDecoration(
        color: AppColors.surfaceSubtle,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        children: <Widget>[
          const Icon(Icons.credit_card_rounded, size: 20),
          const SizedBox(width: 10),
          Text(
            'Meus cartões',
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
