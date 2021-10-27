import 'package:flutter/material.dart';
import 'package:themoviedb/constants.dart';
import 'package:themoviedb/widgets/movies_screen/movies_screen_widget.dart';

class HomeScreenWidget extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenWidgetState createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  static const List<Widget> _tabsContent = [
    Text('Home screen'),
    MoviesScreenWidget(),
    Text('Tv shows list screen'),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TMDB'),
      ),
      body: Center(
        child: _tabsContent[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kMainBlueColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'TV shows',
          ),
        ],
      ),
    );
  }
}
