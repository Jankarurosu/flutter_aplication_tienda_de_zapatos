import 'package:flutter/material.dart';
import 'package:flutter_application_tienda_de_zapatos/models/shoe.dart';
import 'package:flutter_application_tienda_de_zapatos/pages/shoe_detail.dart';
import 'package:flutter_application_tienda_de_zapatos/widgets/background_clipper.dart';
import 'package:flutter_application_tienda_de_zapatos/widgets/shoe_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu, color: Colors.black),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Buscar por categorias",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3.65,
                  child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      itemCount: categoriesShoes.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => {
                            //Muestra la pagina de detalles
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ShoeDetail(shoe: categoriesShoes[index]);
                            }))
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: ClipPath(
                              clipper: BackgroundClipper(),
                              child: Container(
                                color: categoriesShoes[index]
                                    .bgColor
                                    .withOpacity(0.75),
                                width: MediaQuery.of(context).size.width / 1.8,
                                child: Column(
                                  //Las muestras de los zapatos
                                  children: [
                                    Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Image.asset(
                                          "assets/${categoriesShoes[index].imageName}",
                                          height: 130,
                                        ),
                                        Container(
                                          //Sombreado?
                                          height: 50,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3.5,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.25),
                                                  spreadRadius: 10,
                                                  blurRadius: 30,
                                                )
                                              ]),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      categoriesShoes[index].name,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      categoriesShoes[index].price,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 30, bottom: 20),
              child: Text(
                "Recomendados para ti",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          //Recomendados - Shoe Grid
          ShoeGrid(
            shoes: recommendedShoes,
          )
        ],
      ),
    );
  }
}
