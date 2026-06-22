// Seção de shopping com vantagens de marcas parceiras.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubankt02/theme/app_tokens.dart';

class ShoppingSection extends StatelessWidget {
  const ShoppingSection({super.key});

  static const List<Map<String, String>> _products = <Map<String, String>>[
    <String, String>{
      'title': 'Fone Bluetooth',
      'subtitle': 'Som imersivo com bateria de longa duração.',
      'image':
          'https://images.unsplash.com/photo-1546435770-a3e426bf472b?auto=format&fit=crop&w=1200&q=80',
    },
    <String, String>{
      'title': 'Tênis Esportivo',
      'subtitle': 'Conforto para treino e caminhada diária.',
      'image':
          'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=1200&q=80',
    },
    <String, String>{
      'title': 'Smartwatch',
      'subtitle': 'Monitore saúde, passos e notificações.',
      'image':
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=1200&q=80',
    },
  ];

  Widget _productCard(BuildContext context, Map<String, String> product) {
    return SizedBox(
      width: 220,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: AspectRatio(
              aspectRatio: 16 / 10,
              child: Image.network(
                product['image']!,
                fit: BoxFit.cover,
                loadingBuilder:
                    (
                      BuildContext context,
                      Widget child,
                      ImageChunkEvent? loadingProgress,
                    ) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return Container(
                        color: AppColors.surfaceSubtle,
                        child: const Center(child: CircularProgressIndicator()),
                      );
                    },
                errorBuilder:
                    (
                      BuildContext context,
                      Object error,
                      StackTrace? stackTrace,
                    ) {
                      return Container(
                        color: AppColors.surfaceSubtle,
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.image_not_supported_outlined,
                          color: AppColors.textSecondary,
                        ),
                      );
                    },
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            product['title']!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            product['subtitle']!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(
              color: AppColors.textSecondary,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Shopping',
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 6),
        Text(
          'Vantagens exclusivas das nossas marcas preferidas',
          style: GoogleFonts.poppins(
            color: AppColors.textSecondary,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 205,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: _products.length,
            separatorBuilder: (BuildContext context, int _) =>
                const SizedBox(width: 12),
            itemBuilder: (BuildContext context, int index) {
              return _productCard(context, _products[index]);
            },
          ),
        ),
      ],
    );
  }
}
