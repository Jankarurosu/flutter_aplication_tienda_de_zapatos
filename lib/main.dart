import 'package:flutter/material.dart';
import 'package:flutter_application_tienda_de_zapatos/navigation_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tienda de zapatos",
      theme: ThemeData(
        primaryColor: Color(0xFFF3F6F8),
      ),
      home: NavigationContainer(),
    );
  }
}
