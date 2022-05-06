// @dart=2.9
import 'package:flutter/material.dart';
import 'package:food_app/pages/config.dart';
import 'package:food_app/pages/product/subcategory.dart';

class Category extends StatefulWidget {
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  var myarr_categories = [
    {
      "cat_id": "1",
      "cat_name": "Entrée",
      "cat_image": "images/categories/cat2.png"
    },
    {
      "cat_id": "2",
      "cat_name": "Plats Principales",
      "cat_image": "images/categories/cat1.png"
    },
    {
      "cat_id": "3",
      "cat_name": "Petits Plaisir",
      "cat_image": "images/categories/cat3.png"
    },
    {
      "cat_id": "4",
      "cat_name": "Soda",
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Menu",
          style: TextStyle(fontFamily: 'RadioCanada'),
        ),
        backgroundColor: PrimaryColor,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10.0),
        child: ListView.builder(
            itemCount: myarr_categories.length,
            itemBuilder: (BuildContext context, int index) {
              return SingleCategory(
                  cat_id: myarr_categories[index]["cat_id"],
                  cat_image: myarr_categories[index]["cat_image"],
                  cat_name: myarr_categories[index]["cat_name"]);
            }),
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
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SubCategory(cat_id: cat_id, cat_name: cat_name)));
            },
            child: ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.grey[100]),
                child: Image.asset(cat_image),
              ),
              title: Text(
                cat_name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'WaterBrush',
                    color: Colors.yellow[900]),
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
