import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  const TextSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Text',
        style: TextStyle(color: Colors.white, fontSize: 36),
      ),
    );
  }
}
