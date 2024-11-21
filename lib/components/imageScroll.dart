import 'package:exame_andreia/components/icones.dart';
import 'package:flutter/material.dart';

class ImageScroll extends StatefulWidget {
  ImageScroll(
      {Key? key,
      required this.text,
      required this.src,
      required this.description})
      : super(key: key) {
    text = text;
    src = src;
    description = description;
  }

  String text;
  String description;
  NetworkImage src;

  @override
  _ImageScrollState createState() => _ImageScrollState();
}

class _ImageScrollState extends State<ImageScroll> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 400),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Icones(text: widget.text),
                const SizedBox(width: 10),
                const Divider(),
                const SizedBox(width: 10),
                Image(
                  image: widget.src,
                  width: 350,
                ),
                const SizedBox(width: 30),
                Text(
                  widget.description,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
