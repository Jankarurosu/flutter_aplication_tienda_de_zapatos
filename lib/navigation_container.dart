import 'package:flutter/material.dart';
import 'package:flutter_application_tienda_de_zapatos/pages/home_page.dart';
import 'package:flutter_application_tienda_de_zapatos/pages/search_page.dart';
import 'package:flutter_application_tienda_de_zapatos/widgets/custom_bottom_nav_bar.dart';

class NavigationContainer extends StatefulWidget {
  NavigationContainer({Key? key}) : super(key: key);

  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectedPageIndex = 0;
  List<Widget> _appPages = [
    HomePage(),
    SearchPage(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  void _onIconTapped(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _appPages[_selectedPageIndex],
      ),
      bottomNavigationBar: CustomBottomNavigatorBar(
        selectedPageIndex: _selectedPageIndex,
        onIconTap: _onIconTapped,
      ),
    );
  }
}
