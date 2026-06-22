// Divisor visual entre seções.

import 'package:flutter/material.dart';
import 'package:nubankt02/theme/app_tokens.dart';

class SectionDivider extends StatelessWidget {
  const SectionDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 24),
      child: Divider(thickness: 1, color: AppColors.divider, height: 1),
    );
  }
}
