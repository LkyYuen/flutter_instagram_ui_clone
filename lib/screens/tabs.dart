import 'package:flutter/material.dart';
// import 'package:flutter_instagram_ui_clone/libs/colors.dart';
// import 'package:budget_on/widget/Index.dart';
import 'package:flutter_instagram_ui_clone/routes/routes.dart';
import 'package:flutter_instagram_ui_clone/screens/home.dart';

class TabsPage extends StatefulWidget {

  @override
  _TabsPageState createState() => _TabsPageState();
}

const double iconSize = 30;

class _TabsPageState extends State<TabsPage> {
  // with AutomaticKeepAliveClientMixin<TabsPage>
  int _selectedIndex = 0;

  

  // final _pageViewController = PageController();

  // static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Container(),
    Container(),
    Container(),
  ];

  // @override
  // bool get wantKeepAlive => true;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // _pageViewController.animateToPage(index, duration: Duration(milliseconds: 100), curve: Curves.bounceOut);
  }

  @override
  Widget build(BuildContext context) {
    // super.build(context);
    return Scaffold(
      // body: Center(
      //   child: _widgetOptions.elementAt(_selectedIndex),
      // ),
      body: IndexedStack(
        
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      // PageView(
      //   controller: _pageViewController,
      //   children: _widgetOptions,
      //   onPageChanged: (index) {
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white, size: iconSize,),
            // title: Text('Search'),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white, size: iconSize,),
            // title: Text('Bookings'),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, color: Colors.white, size: iconSize,),
            // title: Text('Notifications'),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket, color: Colors.white, size: iconSize,),
            // title: Text('Notifications'),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white, size: iconSize,),
            // title: Text('Profile'),
            title: SizedBox.shrink(),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        // selectedItemColor: secondaryThemeColor,
      ),
    );
  }
}