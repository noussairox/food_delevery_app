// @dart=2.9
import 'package:flutter/material.dart';
import 'package:food_app/pages/config.dart';
import 'package:food_app/pages/shopping/shopping.dart';

class ProductDetail extends StatefulWidget {
  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  Widget headerBuild() {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: <Widget>[
          //back arrow
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100],
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(15.0)),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios),
                color: PrimaryColor,
              )),
          Expanded(child: Text("")),
          //shoping cart
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100],
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(15.0)),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Shopping()));
                },
                icon: Icon(Icons.shopping_cart),
                color: PrimaryColor,
              ))
        ],
      ),
    );
  }

  Widget imageProduct() {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[100],
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1),
            )
          ],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0))),
      child: Column(
        children: [
          Image.asset("images/product/prod1.jpg"),
          Padding(padding: EdgeInsets.only(top: 30.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //back arrow
              Container(
                  decoration: BoxDecoration(
                      color: PrimaryColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[100],
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1),
                        )
                      ],
                      borderRadius: BorderRadius.circular(15.0)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove),
                    color: Colors.white,
                  )),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "2",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontFamily: 'MsMadi'),
                ),
              ),
              //shoping cart
              Container(
                  decoration: BoxDecoration(
                      color: PrimaryColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[100],
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1),
                        )
                      ],
                      borderRadius: BorderRadius.circular(15.0)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    color: Colors.white,
                  ))
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: ListView(
          children: <Widget>[
            headerBuild(),
            imageProduct(),
            Container(
              padding: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Plats Grillés",
                    style: TextStyle(fontSize: 30.0, fontFamily: 'RadioCanada'),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      Text("6", style: TextStyle(fontSize: 16.0)),
                      Expanded(child: Text("")),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      Text(
                        "5 Review",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 15.0)),
                  const Text(
                    "Plats Grillés Plats Grillés Plats Grillés Plats Grillés Plats Grillés Plats Grillés Plats Grillés Plats Grillés Plats Grillés Plats Grillés Plats Grillés Plats GrillésPlats Grillés Plats Grillés Plats Grillés Plats Grillés Plats Grillés Plats GrillésPlats Grillés Plats Grillés Plats Grillés Plats Grillés Plats Grillés Plats Grillés Plats Grillés Plats Grillés Plats Grillés Plats Grillés Plats Grillés Plats GrillésPlats Grillés Plats Grillés Plats Grillés Plats Grillés Plats Grillés Plats GrillésPlats Grillés Plats Grillés Plats Grillés Plats Grillés Plats Grillés Plats Grillés ",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'RadioCanada',
                        color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: Row(
          children: [
            const Text(
              "100 MAD",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Expanded(child: Text("")),
            Container(
              decoration: BoxDecoration(
                  color: PrimaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100],
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(40.0)),
              margin: EdgeInsets.all(6),
              padding: EdgeInsets.all(11),
              child: const Text(
                "Ajouter aux panier",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Container(
              child: const Icon(
                Icons.shopping_basket,
                color: Colors.white,
              ),
            )
          ],
        ),
        padding: EdgeInsets.only(left: 50.0, right: 30),
        height: MediaQuery.of(context).size.height / 9,
        decoration: BoxDecoration(
            color: PrimaryColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[100],
                spreadRadius: 7,
                blurRadius: 4,
                offset: Offset(0, 3),
              )
            ],
            borderRadius: BorderRadius.circular(40.0)),
      ),
    );
  }
}
