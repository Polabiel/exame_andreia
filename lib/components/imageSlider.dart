import 'package:exame_andreia/components/icones.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  ImageSlider(
      {super.key,
      required this.text,
      required this.src,
      required this.description}) {
    text = text;
    src = src;
    description = description;
  }

  String text;
  String description;
  NetworkImage src;

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
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
                Row(
                  children: [
                    Expanded(
                      child: Image(
                        image: widget.src,
                        width: 350,
                      ),
                    ),
                    const SizedBox(width: 30),
                    Expanded(
                      child: Text(
                        widget.description,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
