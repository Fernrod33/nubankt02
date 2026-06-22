// Carrossel horizontal com informações de empréstimo disponível.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubankt02/theme/app_tokens.dart';

class InfoCardsRow extends StatelessWidget {
  const InfoCardsRow({super.key});

  Widget _buildCard(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 64,
      padding: const EdgeInsets.all(14),
      decoration: const BoxDecoration(
        color: AppColors.surfaceSubtle,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: RichText(
        text: TextSpan(
          style: GoogleFonts.poppins(
            fontSize: 13,
            color: AppColors.textPrimary,
            height: 1.35,
            fontWeight: FontWeight.w500,
          ),
          children: <InlineSpan>[
            const TextSpan(text: 'Você tem até '),
            TextSpan(
              text: 'R\$ 25.000,00',
              style: GoogleFonts.poppins(
                color: AppColors.accent,
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
            ),
            const TextSpan(text: ' disponíveis para empréstimo.'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: <Widget>[
          _buildCard(context),
          const SizedBox(width: 12),
          _buildCard(context),
        ],
      ),
    );
  }
}
