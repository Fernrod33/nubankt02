// Botão de ação com ícone circular e rótulo.

import 'package:flutter/material.dart';
import 'package:nubankt02/theme/app_tokens.dart';

class ActionItem extends StatelessWidget {
  const ActionItem({super.key, required this.icon, required this.label});

  final Widget icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 64,
            width: 64,
            decoration: const BoxDecoration(
              color: AppColors.surfaceSubtle,
              shape: BoxShape.circle,
            ),
            child: Center(child: icon),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTypography.small.copyWith(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
