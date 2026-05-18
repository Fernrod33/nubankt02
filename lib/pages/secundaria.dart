import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubankt02/models/carteira.dart';
import 'package:nubankt02/models/usuario.dart';

class Secundaria extends StatefulWidget {
  const Secundaria({super.key});

  @override
  State<Secundaria> createState() => _SecundariaState();
}

class _SecundariaState extends State<Secundaria> {
  Carteira _carteira = Carteira(1356.98, 250, 3455.55, 25000);
  late Usuario _usuario = Usuario('Laysa', 30, _carteira);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110,
        backgroundColor: Color(0xFF830AD1),
        title: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                Container(
                  child: Icon(Icons.person_outlined, color: Colors.white,),
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                      color: Color(0xFF9B03FE),
                      shape: .circle
                  ),
                ),
                Container(
                  width: 100,
                  child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Image.asset('assets/images/iconevisualizacao.png'),
                        Column(
                          children: [Image.asset('assets/images/iconeajuda.png'), SizedBox(height: 5,)],
                        ),
                        Image.asset('assets/images/iconeconvite.png'),
                      ]
                  ),
                )
              ],),
              SizedBox(height: 10),
              Row(
                children: [Text('Olá, ${_usuario.nome}', style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: .w600,
                ),)],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsetsGeometry.fromLTRB(16, 16, 16,0),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                      Text('Conta', style: GoogleFonts.poppins(
                        color: Color(0xFF060606),
                        fontSize: 16,
                        fontWeight: .w500
                      ),),
                      Icon(Icons.arrow_forward_ios, color: Color(0xFF666666),)
                    ],),
                    Row(children: [
                      Text('R\$ ${_usuario.carteira.saldo}', style: GoogleFonts.poppins(
                          color: Color(0xFF060606),
                          fontSize: 16,
                          fontWeight: .bold
                      ),)
                    ],),
                    SizedBox(height: 24,),
                    SingleChildScrollView(
                      scrollDirection: .vertical,
                      child: Row(
                        children: [
                          GestureDetector(
                            child: Column(
                              children: [
                                Stack(
                                  alignment: .center,
                                  children: [
                                    Image.asset("assets/images/Ellipse.png"),
                                    Image.asset("assets/images/icone.png")
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
        )
      )
    );
  }
}
