import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeria de arte pessoal'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(child: Text('Galeria', style: TextStyle(color: Colors.white, fontSize: 36),)
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              elevation: 6,
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2Ct765BUL-eQPc-JhOva8GXcjyOJMbck-Qw&usqp=CAU'),
                      ),
                      
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
