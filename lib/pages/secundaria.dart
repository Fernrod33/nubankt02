// Página Principal (Tela Secundária)

import 'package:flutter/material.dart';
import 'package:nubankt02/models/carteira.dart';
import 'package:nubankt02/models/usuario.dart';
import 'package:nubankt02/theme/app_tokens.dart';
import 'package:nubankt02/widgets/cartao_credito_section.dart';
import 'package:nubankt02/widgets/conta_section.dart';
import 'package:nubankt02/widgets/emprestimo_section.dart';
import 'package:nubankt02/widgets/header_section.dart';
import 'package:nubankt02/widgets/info_cards_row.dart';
import 'package:nubankt02/widgets/investimentos_section.dart';
import 'package:nubankt02/widgets/meus_cartoes_card.dart';
import 'package:nubankt02/widgets/section_divider.dart';
import 'package:nubankt02/widgets/seguros_section.dart';
import 'package:nubankt02/widgets/shopping_section.dart';

class Secundaria extends StatefulWidget {
  const Secundaria({super.key});

  @override
  State<Secundaria> createState() => _SecundariaState();
}

class _SecundariaState extends State<Secundaria> {
  final Carteira _carteira = Carteira(1356.98, 250, 3455.55, 25000);

  late final Usuario _usuario = Usuario('Laysa', 30, _carteira);

  String _currency(double value) {
    final String fixed = value.toStringAsFixed(2).replaceAll('.', ',');
    return 'R\$ $fixed';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: Column(
        children: <Widget>[
          HeaderSection(nomeUsuario: _usuario.nome),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 18, 20, 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ContaSection(saldo: _currency(_usuario.carteira.saldo)),
                    const SizedBox(height: 20),
                    const MeusCartoesCard(),
                    const SizedBox(height: 16),
                    const InfoCardsRow(),
                    const SectionDivider(),
                    const SizedBox(height: 22),
                    CartaoCreditoSection(
                      fatura: _currency(_usuario.carteira.fatura),
                      limite: _currency(_usuario.carteira.limite),
                    ),
                    const SectionDivider(),
                    const SizedBox(height: 22),
                    EmprestimoSection(
                      emprestimo: _currency(_usuario.carteira.emprestimo),
                    ),
                    const SectionDivider(),
                    const SizedBox(height: 22),
                    const InvestimentosSection(),
                    const SectionDivider(),
                    const SizedBox(height: 22),
                    const SegurosSection(),
                    const SizedBox(height: 18),
                    const ShoppingSection(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
