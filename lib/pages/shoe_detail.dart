import 'package:flutter/material.dart';
import 'package:flutter_application_tienda_de_zapatos/models/shoe.dart';

class ShoeDetail extends StatelessWidget {
  const ShoeDetail({Key? key, required this.shoe}) : super(key: key);
  final Shoe shoe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Positioned(
                  right: 6,
                  bottom: 10,
                  child: Container(
                    alignment: Alignment.center,
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "1",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).primaryColor,
              padding: EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "LIMITADO",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        shoe.name,
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "A solo",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        shoe.price,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Colores Disponibles",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          ...shoe.availableColors.map((e) => Container(
                                margin: EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                    color: e,
                                    borderRadius: BorderRadius.circular(4)),
                                height: 30,
                                width: 30,
                              ))
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: Image.asset(
                      "assets/${shoe.imageName}",
                      fit: BoxFit.cover,
                      alignment: Alignment.centerLeft,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(40, 60, 40, 60),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Descripción del producto",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    shoe.description,
                    style: TextStyle(
                        height: 1.5,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.6,
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Comprar ahora",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.6,
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.purple,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Añadir al Carrito",
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
