import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Icones extends StatefulWidget {
  Icones({Key? key, required this.text}) : super(key: key) {
    text = text;
  }

  String text;

  @override
  _IconesState createState() => _IconesState();
}

class _IconesState extends State<Icones> {
  bool _isFavorite = false;
  late String _formattedTime;

  @override
  void initState() {
    super.initState();
    _formattedTime = _getHourStatic();
  }

  DateTime getRandomTime() {
    Random random = Random();
    int hour = random.nextInt(24);
    int minute = random.nextInt(60);

    return DateTime.now().subtract(Duration(hours: hour, minutes: minute));
  }

  String _getHourStatic() {
    return '${getRandomTime().hour.toString()}:${getRandomTime().minute.toString()}h';
  }

  void _favorite() {
    if (kDebugMode) {
      print('Favorito pressionado');
    }
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.text.length > 27
                    ? '${widget.text.substring(0, 27)}...'
                    : widget.text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 10),
              const Text('•'),
              const SizedBox(width: 10),
              Text(
                _formattedTime,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(width: 10),
              IconButton(
                icon: Icon(
                  _isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
                  color: _isFavorite ? Colors.redAccent : null,
                ),
                onPressed: () {
                  _favorite();
                },
              ),
              const SizedBox(width: 20),
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {
                  if (kDebugMode) {
                    print('Compartilhar pressionado');
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
