// CÓDIGO FEITO POR Luis Augusto dos Santos Silva
import 'package:flutter/material.dart';

import 'lista_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação entre telas',
      home: const ListaScreen(),
    );
  }
}
