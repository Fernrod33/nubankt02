// Seção de empréstimo com valor disponível.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubankt02/theme/app_tokens.dart';
import 'package:nubankt02/widgets/section_title_row.dart';

class EmprestimoSection extends StatelessWidget {
  const EmprestimoSection({super.key, required this.emprestimo});

  final String emprestimo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SectionTitleRow(title: 'Empréstimo'),
        const SizedBox(height: 8),
        Text(
          'Valor disponível de até $emprestimo',
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
