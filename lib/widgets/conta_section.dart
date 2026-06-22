// Seção de conta com saldo e ações rápidas.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubankt02/theme/app_tokens.dart';
import 'package:nubankt02/widgets/action_item.dart';
import 'package:nubankt02/widgets/section_title_row.dart';

class ContaSection extends StatelessWidget {
  const ContaSection({super.key, required this.saldo});

  final String saldo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SectionTitleRow(title: 'Conta'),
        const SizedBox(height: 6),
        Text(
          saldo,
          style: GoogleFonts.poppins(
            color: AppColors.textPrimary,
            fontSize: 22,
            fontWeight: FontWeight.w700,
            height: 1.15,
          ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const <Widget>[
              ActionItem(
                icon: ImageIcon(AssetImage('assets/images/icone.png')),
                label: 'Área Pix',
              ),
              SizedBox(width: 14),
              ActionItem(
                icon: Icon(Icons.qr_code_scanner_rounded, size: 24),
                label: 'Pagar',
              ),
              SizedBox(width: 14),
              ActionItem(
                icon: Icon(Icons.compare_arrows_rounded, size: 24),
                label: 'Transferir',
              ),
              SizedBox(width: 14),
              ActionItem(
                icon: Icon(Icons.attach_money_rounded, size: 24),
                label: 'Depositar',
              ),
              SizedBox(width: 14),
              ActionItem(
                icon: Icon(Icons.request_quote_outlined, size: 24),
                label: 'Cobrar',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
