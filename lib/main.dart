// Arquivo principal da aplicação
// Responsável pela inicialização e configuração da app

import 'package:flutter/material.dart';
import 'package:nubankt02/pages/secundaria.dart';
import 'package:nubankt02/pages/my_home_page.dart';
import 'package:nubankt02/theme/app_tokens.dart';

/// Função de entrada da aplicação
/// Inicializa e executa o widget raiz [MyApp]
void main() {
  runApp(const MyApp());
}

/// Widget raiz da aplicação
/// Configura o tema, rotas e estrutura geral da app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank',
      // Configura tema com cor roxa como seed color (cor principal da marca Nubank)
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.backgroundPurple,
        ),
        scaffoldBackgroundColor: AppColors.surface,
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      // Define '/primaria' (tela de login) como rota inicial
      initialRoute: '/primaria',
      // Mapeamento de rotas: permite navegação entre telas
      routes: {
        '/secundaria': (context) =>
            const Secundaria(), // Tela principal com saldo
        '/primaria': (context) => const MyHomePage(), // Tela de login
      },
    );
  }
}
