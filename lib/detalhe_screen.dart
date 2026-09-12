//CÓDIGO FEITO POR Luis Augusto dos Santos Silva
import 'package:flutter/material.dart';

class DetalheScreen extends StatelessWidget {
  const DetalheScreen({super.key, required this.nome});

  final String nome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalhe do Item')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(nome, style: const TextStyle(fontSize: 22)),
            const Spacer(),

            FilledButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Voltar'),
              ),
          ],
        ),
      ),
    );
  }
}
