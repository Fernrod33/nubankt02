// Seção do cartão de crédito com fatura atual e limite disponível.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubankt02/theme/app_tokens.dart';
import 'package:nubankt02/widgets/section_title_row.dart';

class CartaoCreditoSection extends StatelessWidget {
  const CartaoCreditoSection({
    super.key,
    required this.fatura,
    required this.limite,
  });

  final String fatura;
  final String limite;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SectionTitleRow(title: 'Cartão de crédito'),
        const SizedBox(height: 8),
        Text(
          'Fatura atual',
          style: GoogleFonts.poppins(
            color: AppColors.textSecondary,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          fatura,
          style: GoogleFonts.poppins(
            color: AppColors.textPrimary,
            fontSize: 23,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          'Limite disponível de $limite',
          style: GoogleFonts.poppins(
            color: AppColors.textMuted,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: const BoxDecoration(
            color: AppColors.surfaceSubtle,
            borderRadius: BorderRadius.all(Radius.circular(99)),
          ),
          child: Text(
            'Parcelar compras',
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
