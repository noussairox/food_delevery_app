// @dart=2.9
import 'package:flutter/material.dart';
import 'package:food_app/pages/config.dart';

class Shopping extends StatefulWidget {
  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
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
        ],
      ),
    );
  }

  var my_pro = [
    {
      "pro_id": "1",
      "pro_name": "Machawi",
      "pro_price": "100",
      "pro_image": "images/product/prod1.jpg",
      "pro_qty": "3",
    },
    {
      "pro_id": "2",
      "pro_name": "Machawi",
      "pro_price": "100",
      "pro_image": "images/product/prod2.jpg",
      "pro_qty": "3",
    },
    {
      "pro_id": "3",
      "pro_name": "Machawi",
      "pro_price": "100",
      "pro_image": "images/product/prod1.jpg",
      "pro_qty": "3",
    },
    {
      "pro_id": "4",
      "pro_name": "Machawi",
      "pro_price": "100",
      "pro_image": "images/product/prod1.jpg",
      "pro_qty": "3",
    }
  ];
  void _showSheetMessage(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        )),
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
                      child: Icon(
                        Icons.done_all,
                        color: PrimaryColor,
                        size: 72,
                      ),
                    ),
                    Text(
                      "Merci pour votre commande",
                      style: TextStyle(
                          color: PrimaryColor,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'MsMadi'),
                    ),
                    Text(
                      "Vous pouvez suivre votre commande en appuyant sur le boutton au dessous",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                          fontFamily: 'RadioCanada'),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: MaterialButton(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.only(top: 11),
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Text(
                            "Suivre ma commande",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                          decoration: BoxDecoration(
                              color: PrimaryColor,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: MaterialButton(
                        child: Container(
                          margin: EdgeInsets.all(0),
                          padding: EdgeInsets.only(top: 11),
                          width: MediaQuery.of(context).size.width - 65,
                          height: 50,
                          child: Text(
                            "Commandez de nouveau",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              child: ListView.builder(
                itemCount: my_pro.length,
                itemBuilder: (context, index) {
                  return SingleProduct(
                    pro_id: my_pro[index]["pro_id"],
                    pro_name: my_pro[index]["pro_name"],
                    pro_image: my_pro[index]["pro_image"],
                    pro_qty: my_pro[index]["pro_qty"],
                    pro_price: my_pro[index]["pro_price"],
                  );
                },
              ),
            ),
            Positioned(
              child: headerBuild(),
              top: 0,
              left: 0,
              right: 0,
              height: 120,
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                _showSheetMessage(context);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.shopping_cart_checkout,
                    color: Colors.white,
                  ),
                  Text(
                    "Valider le panier",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'RadioCanada',
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Expanded(child: Text("")),
            Text(
              "Total:",
              style: TextStyle(
                  color: Colors.white, fontFamily: 'RadioCanada', fontSize: 16),
            ),
            Padding(padding: EdgeInsets.all(2)),
            Text(
              "1000 Mad",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'RadioCanada',
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        padding: EdgeInsets.only(left: 30.0, right: 30),
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

class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_price;
  final String pro_qty;
  final String pro_image;

  SingleProduct(
      {this.pro_id,
      this.pro_name,
      this.pro_image,
      this.pro_price,
      this.pro_qty});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[100],
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.cancel,
              color: PrimaryColor,
            ),
          ),
          Container(
            child: ListTile(
              title: Text(
                pro_name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RadioCanada',
                    fontSize: 18),
              ),
              subtitle: Text(pro_price),
              leading: Container(
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(pro_image),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              trailing: Container(
                width: 70.0,
                child: Row(children: [
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 16,
                      ),
                      decoration: BoxDecoration(
                        color: PrimaryColor,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      pro_qty,
                      style: TextStyle(fontSize: 19),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 16,
                      ),
                      decoration: BoxDecoration(
                        color: PrimaryColor,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
