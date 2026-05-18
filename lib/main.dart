import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubankt02/pages/secundaria.dart';
import 'package:nubankt02/pages/myHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        fontFamily: GoogleFonts.poppins().fontFamily,

      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/secundaria',
      routes: {
        '/secundaria': (context) => const Secundaria(),
        '/primaria': (context) => const MyHomePage()
      },

    );
  }
}

