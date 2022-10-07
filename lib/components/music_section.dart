import 'package:flutter/material.dart';

class MusicSection extends StatelessWidget {
  const MusicSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: Colors.black12,
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 60,
                  child: Icon(Icons.play_circle, size: 40,),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Nome da musica.mp3', style: TextStyle(fontSize: 16),),
                SizedBox(height: 30,),
                Container(
                  width: 300,
                  child: LinearProgressIndicator(
                    color: Colors.amber,
                    value: 0.6,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
