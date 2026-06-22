// Seção de investimentos.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubankt02/theme/app_tokens.dart';
import 'package:nubankt02/widgets/section_title_row.dart';

class InvestimentosSection extends StatelessWidget {
  const InvestimentosSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SectionTitleRow(title: 'Investimentos'),
        const SizedBox(height: 8),
        Text(
          'A opção de investir sem asteriscos. Pergunte para a gente.',
          style: GoogleFonts.poppins(
            color: AppColors.textSecondary,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
