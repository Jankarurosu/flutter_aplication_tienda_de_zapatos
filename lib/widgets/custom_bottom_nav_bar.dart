import 'package:flutter/material.dart';

class CustomBottomNavigatorBar extends StatelessWidget {
  const CustomBottomNavigatorBar(
      {Key? key, required this.selectedPageIndex, required this.onIconTap})
      : super(key: key);
  final int selectedPageIndex;
  final Function onIconTap;
  final double _unselectedIconSize = 25;
  final double _selectedIconSize = 22;

  @override
  Widget build(BuildContext context) {
    return Container(
      //Barra de navegacion
      padding: EdgeInsets.only(bottom: 4.5),
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        //Centrar los iconos
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Definir los iconos
          _bottomNaviItem(0, "Principal", Icons.home, Icons.home_outlined),
          _bottomNaviItem(1, "Buscar", Icons.search, Icons.search),
          _bottomNaviItem(
              2, "Tienda", Icons.local_mall, Icons.local_mall_outlined),
          _bottomNaviItem(
              3, "Perfil", Icons.account_circle, Icons.account_circle_outlined),
        ],
      ),
    );
  }

  _bottomNaviItem(
      int index, String label, IconData selectedIcon, IconData unselectedIcon) {
    return GestureDetector(
      onTap: () => {onIconTap(index)},
      child: selectedPageIndex == index
          ? Container(
              //Azul que rodea los iconos
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: Color(0xFFF5E68E8),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Icon(
                    selectedIcon,
                    color: Colors.white,
                    size: _selectedIconSize,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    label,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )
                ],
              ),
            )
          : Icon(
              unselectedIcon,
              size: _unselectedIconSize,
            ),
    );
  }
}
