// @dart=2.9
import 'package:flutter/material.dart';
import 'package:food_app/pages/config.dart';
import 'package:food_app/pages/product/product_detail.dart';

class Product extends StatefulWidget {
  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var myarr_product = [
    {
      "pro_id": "1",
      "pro_name": "product1",
      "pro_desc": "description product description product description product",
      "pro_image": "images/product/prod1.jpg",
      "pro_offer": "1",
    },
    {
      "pro_id": "2",
      "pro_name": "product2",
      "pro_desc": "description product description product description product",
      "pro_image": "images/product/prod2.jpg",
      "pro_offer": "0",
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "description product description product description product",
      "pro_image": "images/product/prod3.jpg",
      "pro_offer": "1",
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "description product description product description product",
      "pro_image": "images/product/prod3.jpg",
      "pro_offer": "1",
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "description product description product description product",
      "pro_image": "images/product/prod3.jpg",
      "pro_offer": "1",
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "description product description product description product",
      "pro_image": "images/product/prod3.jpg",
      "pro_offer": "1",
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "description product description product description product",
      "pro_image": "images/product/prod3.jpg",
      "pro_offer": "1",
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "description product description product description product",
      "pro_image": "images/product/prod3.jpg",
      "pro_offer": "1",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Burger",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: myarr_product.length,
              itemBuilder: (BuildContext context, int index) {
                return SingleProduct(
                  pro_desc: myarr_product[index]["pro_desc"],
                  pro_name: myarr_product[index]["pro_name"],
                  pro_image: myarr_product[index]["pro_image"],
                  pro_id: myarr_product[index]["pro_id"],
                  pro_offer: myarr_product[index]["pro_offer"],
                );
              }),
        ),
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_desc;
  final String pro_image;
  final String pro_offer;

  SingleProduct(
      {this.pro_id,
      this.pro_name,
      this.pro_desc,
      this.pro_image,
      this.pro_offer});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductDetail()));
      },
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blueGrey[100],
        ),
        child: Row(children: [
          Container(
            margin: EdgeInsets.only(right: 5.0),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(pro_image),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pro_name,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RadioCanada'),
                  ),
                  RichText(
                    overflow: TextOverflow.clip,
                    text: TextSpan(children: [
                      TextSpan(
                          text: pro_desc,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ))
                    ]),
                  ),
                ],
              ),
            ),
          ),
          //------------------------------favorite
          Container(
            height: 100,
            width: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.favorite_border),
                checkOffer(pro_offer),
              ],
            ),
          )
          //------------------------------endfavorite
        ]),
      ),
    );
  }

  Widget checkOffer(String pro_offer) {
    return pro_offer == "1"
        ? Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: PrimaryColor,
            ),
            child: Text(
              "offre",
              style: TextStyle(color: Colors.white),
            ))
        : Text("");
  }
}
