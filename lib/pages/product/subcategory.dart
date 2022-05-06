// @dart=2.9
import 'package:flutter/material.dart';
import 'package:food_app/pages/config.dart';
import 'package:food_app/pages/product/product.dart';

class SubCategory extends StatefulWidget {
  final String cat_id;
  final String cat_name;

  SubCategory({this.cat_id, this.cat_name});
  @override
  State<SubCategory> createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  var myarr_categories = [
    {
      "sub_id": "1",
      "sub_name": "Salade",
      "sub_image": "images/categories/cat2.png",
      "sub_count": "14",
    },
    {
      "sub_id": "2",
      "sub_name": "Burger",
      "sub_image": "images/categories/cat1.png",
      "sub_count": "10",
    },
    {
      "sub_id": "3",
      "sub_name": "Tacos",
      "sub_image": "images/categories/cat3.png",
      "sub_count": "14",
    },
    {
      "sub_id": "4",
      "sub_name": "menu burger",
      "sub_image": "images/categories/cat4.png",
      "sub_count": "4",
    },
    {
      "sub_id": "5",
      "sub_name": "Dessert",
      "sub_image": "images/categories/cat5.png",
      "sub_count": "10",
    },
    {
      "sub_id": "6",
      "sub_name": "Soda",
      "sub_image": "images/categories/cat6.png",
      "sub_count": "4",
    },
    {
      "sub_id": "7",
      "sub_name": "Pizza",
      "sub_image": "images/categories/cat7.png",
      "sub_count": "24",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.cat_name,
          style: TextStyle(fontFamily: 'RadioCanada'),
        ),
        backgroundColor: PrimaryColor,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10.0),
        child: ListView.builder(
            itemCount: myarr_categories.length,
            itemBuilder: (BuildContext context, int index) {
              return SingleSubCategory(
                sub_id: myarr_categories[index]["sub_id"],
                sub_image: myarr_categories[index]["sub_image"],
                sub_name: myarr_categories[index]["sub_name"],
                sub_count: myarr_categories[index]["sub_count"],
              );
            }),
      ),
    );
  }
}

class SingleSubCategory extends StatelessWidget {
  final String sub_id;
  final String sub_name;
  final String sub_image;
  final String sub_count;

  SingleSubCategory(
      {this.sub_id, this.sub_name, this.sub_image, this.sub_count});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width / 4.5,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Product()));
            },
            child: ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.grey[100]),
                child: Image.asset(sub_image),
              ),
              title: Text(
                sub_name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'WaterBrush',
                    color: Colors.yellow[900]),
              ),
              subtitle: Text(
                sub_count,
                style: TextStyle(fontFamily: 'RadioCanada'),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
