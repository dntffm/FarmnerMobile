import 'package:farmner/HomeViewWidget.dart';
import 'package:farmner/MymarketViewWidget.dart';
import 'package:farmner/history.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'history.dart';
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

  List<Widget> _menuOptions = <Widget> [
    HomeViewWidget(),
    MymarketViewWidget(),
    HistoryWidget(),
    Text("The next"),
  ];

  void _onTap(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Positioned(child: Card(
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(38)),
            ),
          ),
          Center(
            child : _menuOptions.elementAt(_currentIndex)
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: bottomNavBar)
        ],
      ),
    );
  }

  Widget get bottomNavBar{
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight : Radius.circular(20),
        topLeft : Radius.circular(20)
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor:  Color(0xFF87e69a),
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem >[
         
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.white),
            label : "Beranda"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_two_outlined,color: Colors.white),
            label : "MarketKu"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop,color: Colors.white),
            label : "HistoriKu"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined,color: Colors.white),
            label : "ProfilKu"
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}
