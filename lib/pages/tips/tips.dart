//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/pages/account/login.dart';
import 'package:food_app/pages/account/register.dart';
import 'package:food_app/pages/config.dart';
import 'package:page_indicator/page_indicator.dart';

class Tips extends StatefulWidget {
  @override
  State<Tips> createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  var myarr = [
    {
      "title": "Cherchez des délicieux plats !",
      "info": "Découvrez des nombreux restaurants",
      "image": "images/tip1.png"
    },
    {
      "title": "Livraison Rapide !",
      "info": "Faites-vous livrer les meilleurs restos près de chez vous",
      "image": "images/tip2.png"
    },
    {
      "title": "C'est livré !",
      "info": "Vous pouvez suivre votre commande",
      "image": "images/tip3.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height / 5.7;
    return Scaffold(
      body: Container(
          child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(top: 40.0, right: 25),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: const Text(
                'Login',
                style: TextStyle(
                    fontSize: 22.0,
                    color: PrimaryColor,
                    fontFamily: 'RadioCanada'),
              ),
            ),
          ),
          Container(
            height: myheight * 4,
            child: PageIndicatorContainer(
              shape: IndicatorShape.circle(),
              length: myarr.length,
              align: IndicatorAlign.bottom,
              indicatorColor: Colors.white,
              indicatorSelectorColor: PrimaryColor,
              child: PageView.builder(
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: myarr.length,
                  itemBuilder: (BuildContext context, i) {
                    return SingleTips(
                        title: myarr[i]["title"],
                        info: myarr[i]["info"],
                        image: myarr[i]["image"]);
                  }),
            ),
          ),
          Expanded(
            child: Container(
              height: myheight,
              padding: const EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                  Column(
                    textDirection: TextDirection.ltr,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(2),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: PrimaryColor,
                          ),
                          child: const Text(
                            "Crée un compte",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RadioCanada',
                            ),
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(2),
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.blue,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const <Widget>[
                              FaIcon(
                                FontAwesomeIcons.facebook,
                                size: 26.0,
                                color: Colors.white,
                              ),
                              Text(
                                "Continuer en utilisant Facebook",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'RadioCanada',
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

class SingleTips extends StatelessWidget {
  final String title;
  final String info;
  final String image;

  SingleTips({this.title, this.info, this.image});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: Container(
          alignment: Alignment.center,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        )),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            title,
            style: const TextStyle(
              color: PrimaryColor,
              fontSize: 38.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'MsMadi',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 70.0),
          child: Text(
            info,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'RadioCanada',
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
