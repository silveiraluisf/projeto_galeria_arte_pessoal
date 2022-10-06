import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 6,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2Ct765BUL-eQPc-JhOva8GXcjyOJMbck-Qw&usqp=CAU',
                        width: double.infinity,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 150,
                      color: Colors.black54,
                      padding: const EdgeInsets.all(6),
                      child: const Positioned(
                        bottom: 20,
                        right: 0,
                        child: Center(
                          child: Text(
                            'Musicas',
                            style: TextStyle(
                                color: Colors.white70, fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Card(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 6,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://mymodernmet.com/wp/wp-content/uploads/2018/05/painting-ideas-thumbnail-jpg.jpg',
                        width: double.infinity,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 150,
                      color: Colors.black54,
                      padding: const EdgeInsets.all(6),
                      child: const Positioned(
                        bottom: 20,
                        right: 0,
                        child: Center(
                          child: Text(
                            'Pinturas',
                            style: TextStyle(
                                color: Colors.white70, fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Card(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 6,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://www.sciencealert.com/images/2021-06/processed/PersonWritingInJournalWithBlueInkPen_600.jpg',
                        width: double.infinity,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 150,
                      color: Colors.black54,
                      padding: const EdgeInsets.all(6),
                      child: const Positioned(
                        bottom: 20,
                        right: 0,
                        child: Center(
                          child: Text(
                            'Textos',
                            style: TextStyle(
                                color: Colors.white70, fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
