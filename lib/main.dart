import 'package:exame_andreia/components/icones.dart';
import 'package:exame_andreia/components/imageScroll.dart';
import 'package:exame_andreia/components/imageSlider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('Avaliação Flutter Visual')),
      body: ListView(
        children: [
          ImageSlider(
            text: 'Bolinhas agora são novo hit',
            src: const NetworkImage(
                'https://images.unsplash.com/photo-1585081514381-429d5275c855?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            description:
                'Você não vai acreditar no que as bolinhas estão fazendo, no mundo da moda, agora milhares de pessoas estão aderindo a essa nova tendência, trazendo um novo estilo para o mundo da moda.',
          ),
          const SizedBox(height: 20),
          ImageScroll(
            text: 'Imagem 2',
            src: const NetworkImage(
                'https://images.unsplash.com/photo-1585081514381-429d5275c855?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            description: 'Descrição da imagem 2',
          ),
          const SizedBox(height: 20),
          ImageScroll(
            text: 'Imagem 3',
            src: const NetworkImage(
                'https://images.unsplash.com/photo-1585081514381-429d5275c855?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            description: 'Descrição da imagem 3',
          ),
          const SizedBox(height: 20),
          ImageScroll(
            text: 'Imagem 4',
            src: const NetworkImage(
                'https://images.unsplash.com/photo-1585081514381-429d5275c855?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            description: 'Descrição da imagem 4',
          ),
          const SizedBox(height: 20),
          ImageScroll(
            text: 'Imagem 5',
            src: const NetworkImage(
                'https://images.unsplash.com/photo-1585081514381-429d5275c855?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            description: 'Descrição da imagem 5',
          ),
          const SizedBox(height: 20),
          ImageScroll(
            text: 'Imagem 6',
            src: const NetworkImage(
                'https://images.unsplash.com/photo-1585081514381-429d5275c855?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            description: 'Descrição da imagem 6',
          ),
          const SizedBox(height: 20),
          ImageScroll(
            text: 'Imagem 7',
            src: const NetworkImage(
                'https://images.unsplash.com/photo-1585081514381-429d5275c855?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            description: 'Descrição da imagem 7',
          ),
        ],
      ),
    ));
  }
}
