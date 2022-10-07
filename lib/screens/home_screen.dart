import 'package:flutter/material.dart';
import 'package:projeto_galeria_arte_pessoal/components/painting_section.dart';
import '../components/category_card.dart';
import '../components/music_section.dart';
import '../components/text_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const CategoryCard(),
    const PaintingSection(),
    const MusicSection(),
    const TextSection(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calotas Voadoras'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqzTuLO5z8ZmnvqNSMdaaYkTKvphKORCS7YA&usqp=CAU',
                  ),
                ),
                color: Theme.of(context).backgroundColor,
              ),
              child: const Text(
                'User Name',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.message,
                color: Colors.white,
              ),
              title: Text('Messages'),
            ),
            const ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              title: Text('Profile'),
            ),
            const ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(child: const Icon(Icons.add),onPressed: (){}),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black54,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.palette),
            label: 'Painting',
            backgroundColor: Colors.black54,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Music',
            backgroundColor: Colors.black54,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_snippet),
            label: 'Texts',
            backgroundColor: Colors.black54,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
