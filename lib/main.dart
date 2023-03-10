import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static const _mainColor = Color.fromARGB(255, 16, 122, 85);
   

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _pageIndex = 0;
  static const List<Widget> _pages = <Widget>[
    Center(
      child: Text('Tech'),
    ),
    Center(
      child: Text('Home'),
    ),
    Center(
      child: Text('Policy'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: MyApp._mainColor,
          title: const Text('App'),
        ),
        body: Center(
          child: _pages.elementAt(_pageIndex)
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.laptop_mac_outlined),
              label: 'Laptop'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined),
              label: 'Book',
            ),
          ],
          iconSize: 30,
          currentIndex: _pageIndex,
          onTap: _onItemTapped,
          selectedItemColor: MyApp._mainColor,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
  }
}
