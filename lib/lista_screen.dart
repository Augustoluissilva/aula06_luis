//código desenvolvido por Luis Augusto dos Santos Silva
import 'package:flutter/material.dart';

import 'detalhe_screen.dart';

class ListaScreen extends StatelessWidget {
  const ListaScreen({super.key});

  final List<String> itens = const [
    'Proteção da máquina',
    'Nível de óleo',
    'Funcionamento do motor',
    'Sistema de alertas'
  ];

  void _abrirDetalhe(BuildContext context, String nome) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetalheScreen(nome: nome)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Intens de Inspeção')),
      body: ListView.builder(
        itemCount: itens.length,
        itemBuilder: (context, index) {
          final nome = itens[index];
          return ListTile(
            title: Text(nome),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => _abrirDetalhe(context, nome),
          );
        },
      ),
    );
  }
}
