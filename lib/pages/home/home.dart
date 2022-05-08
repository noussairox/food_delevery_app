// @dart=2.9

import 'package:flutter/material.dart';
import 'package:food_app/pages/config.dart';
import 'package:food_app/pages/drawer/mydrawer.dart';
import 'package:food_app/pages/product/product_detail.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _keyDrawer = GlobalKey<ScaffoldState>();
  var myarr_product = [
    {
      "pro_id": "1",
      "pro_name": "product1",
      "pro_desc": "description product description product description product",
      "pro_image": "images/product/prod1.jpg",
    },
    {
      "pro_id": "2",
      "pro_name": "product2",
      "pro_desc": "description product description product description product",
      "pro_image": "images/product/prod2.jpg",
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "description product description product description product",
      "pro_image": "images/product/prod3.jpg",
    }
  ];

  var myarr_categories = [
    {
      "cat_id": "2",
      "cat_name": "cat2",
      "cat_image": "images/categories/cat2.png"
    },
    {
      "cat_id": "1",
      "cat_name": "cat1",
      "cat_image": "images/categories/cat1.png"
    },
    {
      "cat_id": "3",
      "cat_name": "cat3",
      "cat_image": "images/categories/cat3.png"
    },
    {
      "cat_id": "4",
      "cat_name": "cat4",
      "cat_image": "images/categories/cat4.png"
    },
    {
      "cat_id": "5",
      "cat_name": "cat5",
      "cat_image": "images/categories/cat5.png"
    },
    {
      "cat_id": "6",
      "cat_name": "cat6",
      "cat_image": "images/categories/cat6.png"
    },
    {
      "cat_id": "7",
      "cat_name": "cat7",
      "cat_image": "images/categories/cat7.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          key: _keyDrawer,
          endDrawer: MyDrawer(),
          body: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(top: 40),
                padding: EdgeInsets.only(left: 15.0),
                child: const Text(
                  "Livraison dans",
                  style: TextStyle(
                      fontFamily: 'RadioCanada',
                      color: Colors.grey,
                      fontSize: 16.0),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    child: const Text(
                      "Votre Localisation",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RadioCanada',
                          fontSize: 20.0),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: PrimaryColor,
                        size: 30,
                      ))
                ],
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        _keyDrawer.currentState.openEndDrawer();
                      },
                      child: Icon(
                        Icons.menu_rounded,
                        color: PrimaryColor,
                        size: 40,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.grey[100]),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "cherchez",
                              suffixIcon: Icon(Icons.search)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                child: ListView.builder(
                    itemCount: myarr_categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return SingleCategory(
                          cat_id: myarr_categories[index]["cat_id"],
                          cat_image: myarr_categories[index]["cat_image"],
                          cat_name: myarr_categories[index]["cat_name"]);
                    }),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3 + 150,
                child: ListView.builder(
                    itemCount: myarr_product.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SingleProduct(
                        pro_id: myarr_product[index]["pro _id"],
                        pro_image: myarr_product[index]["pro_image"],
                        pro_name: myarr_product[index]["pro_name"],
                        pro_desc: myarr_product[index]["pro_desc"],
                      );
                    }),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  size: 30,
                ),
                label: 'notifications',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.restaurant_menu, size: 30),
                label: 'offres',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 30),
                label: 'mon compte',
              ),
            ],
            selectedItemColor: PrimaryColor,
            selectedFontSize: 14,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
          )),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_desc;
  final String pro_image;

  SingleProduct({this.pro_id, this.pro_name, this.pro_desc, this.pro_image});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductDetail()));
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(pro_image))),
            ),
            Text(
              pro_name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RadioCanada',
                  fontSize: 19.0),
            ),
            new Text(
              pro_desc,
              style: TextStyle(
                fontFamily: 'MsMadi',
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleCategory extends StatelessWidget {
  final String cat_id;
  final String cat_name;
  final String cat_image;

  SingleCategory({this.cat_id, this.cat_name, this.cat_image});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width / 4.5,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.grey[100]),
            child: Image.asset(cat_image),
          ),
          Text(
            cat_name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'WaterBrush',
                color: Colors.yellow[900]),
          ),
        ],
      ),
    );
  }
}
