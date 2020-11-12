import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(

      body: HomeStateful(),
    );
  }
}

class HomeStateful extends StatefulWidget{
  HomeStateful({Key key}) : super(key: key);

  _HomeStateFulWidgetState createState() => _HomeStateFulWidgetState();
}

class _HomeStateFulWidgetState extends State<HomeStateful>{
  int _currentIndex = 0;

  static const List<Widget> _menuOptions = <Widget> [
    Text("Home"),
    Text("Next"),
    Text("The next"),
  ];

  void _onTap(int index){
    setState(() {
      _currentIndex = index;
    });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child : _menuOptions.elementAt(_currentIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem >[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label : "Beranda"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label : "Beranda"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label : "Beranda"
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
  }
}