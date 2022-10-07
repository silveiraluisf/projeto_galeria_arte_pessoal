import 'package:flutter/material.dart';

class PaintingSection extends StatelessWidget {
  const PaintingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.network(
                    'https://collectionapi.metmuseum.org/api/collection/v1/iiif/437699/793893/main-image',
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    bottom: 20,
                    right: 0,
                    child: Container(
                      width: 300,
                      padding: const EdgeInsets.all(10),
                      color: Colors.black54,
                      child: const Text(
                          'Cabeça servida',
                      style: TextStyle(fontSize: 26, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
