// Sistema de Design (Design Tokens) da aplicação
// Define cores, espaçamentos, bordas, sombras e tipografia reutilizáveis
// Facilita manutenção e consistência visual em toda a app

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Classe com todas as cores utilizadas na aplicação
/// Segue a paleta de cores do Nubank (roxo como cor principal)
class AppColors {
  // Cores de fundo e brand
  static const Color backgroundPurple = Color(
    0xFF820AD1,
  ); // Roxo principal (Nubank)
  static const Color backgroundPurpleDark = Color(
    0xFF6F00C8,
  ); // Roxo mais escuro
  static const Color white = Color(0xFFFFFFFF); // Branco

  // Cores de texto
  static const Color textPrimary = Color(
    0xFF111111,
  ); // Texto principal (quase preto)
  static const Color textSecondary = Color(
    0xFF666666,
  ); // Texto secundário (cinza médio)
  static const Color textMuted = Color(
    0xFF8B8B8B,
  ); // Texto desabilitado (cinza claro)

  // Cores de superfícies
  static const Color surface = Color(0xFFFFFFFF); // Fundo branco padrão
  static const Color surfaceSubtle = Color(0xFFF1F1F3); // Fundo cinza suave
  static const Color divider = Color(0xFFEDEDED); // Cor para separadores
  static const Color accent = Color(0xFF8A05BE); // Cor acentuada
}

/// Classe com valores de espaçamento padronizado
/// Mantém consistência nas margens e paddings de toda a app
class AppSpacing {
  static const double xxs = 4; // Extra extra pequeno
  static const double xs = 8; // Extra pequeno
  static const double sm = 12; // Pequeno
  static const double md = 16; // Médio
  static const double lg = 24; // Grande
  static const double xl = 32; // Extra grande
}

/// Classe com valores de bordas arredondadas padronizadas
class AppRadius {
  static const BorderRadius card = BorderRadius.all(
    Radius.circular(12),
  ); // Para cards
  static const BorderRadius pill = BorderRadius.all(
    Radius.circular(999),
  ); // Totalmente arredondado
  static const BorderRadius medium = BorderRadius.all(
    Radius.circular(10),
  ); // Médio
}

/// Classe com sombras padronizadas para elementos da UI
class AppShadows {
  // Sombra suave padrão para elementos
  static const List<BoxShadow> soft = <BoxShadow>[
    BoxShadow(
      color: Color(0x12000000), // Preto com pouca opacidade
      offset: Offset(0, 2), // Deslocamento vertical
      blurRadius: 10, // Desfoque suave
    ),
  ];
}

/// Classe com estilos de texto padronizados
/// Define tipografia para diferentes seções da app
class AppTypography {
  // Estilo para títulos principais - tamanho 20
  static TextStyle title = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w600, // Semi-bold
    color: AppColors.textPrimary,
    height: 1.2, // Espaçamento entre linhas
  );

  // Estilo para títulos de seções - tamanho 18
  static TextStyle sectionTitle = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w600, // Semi-bold
    color: AppColors.textPrimary,
    height: 1.25,
  );

  // Estilo para texto de corpo - tamanho 14 (padrão)
  static TextStyle body = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500, // Medium
    color: AppColors.textPrimary,
    height: 1.3,
  );

  // Estilo para texto pequeno - tamanho 12 (labels, hints)
  static TextStyle small = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w500, // Medium
    color: AppColors.textSecondary,
    height: 1.3,
  );
}
